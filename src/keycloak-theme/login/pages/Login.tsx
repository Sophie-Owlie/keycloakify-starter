import { useState, type FormEventHandler, useEffect } from "react";
import { clsx } from "keycloakify/tools/clsx";
import { useConstCallback } from "keycloakify/tools/useConstCallback";
import type { PageProps } from "keycloakify/login/pages/PageProps";
import { useGetClassName } from "keycloakify/login/lib/useGetClassName";
import type { KcContext } from "../kcContext";
import type { I18n } from "../i18n";

const my_custom_param = new URL(window.location.href).searchParams.get(
  "my_custom_param"
);

if (my_custom_param !== null) {
  console.log("my_custom_param:", my_custom_param);
}

export default function Login(
  props: PageProps<Extract<KcContext, { pageId: "login.ftl" }>, I18n>
) {
  const { kcContext, i18n, doUseDefaultCss, Template, classes } = props;

  const { getClassName } = useGetClassName({
    doUseDefaultCss,
    classes,
  });

  const {
    social,
    realm,
    url,
    usernameHidden,
    login,
    auth,
    registrationDisabled,
  } = kcContext;

  const { msg } = i18n;

  const [username, setUsername] = useState<string>("");
  const [password, setPassword] = useState<string>("");
  const [isLoginButtonDisabled, setIsLoginButtonDisabled] = useState(true);

  useEffect(() => {
    if (username.length > 0 || password.length > 0) {
      setIsLoginButtonDisabled(false);
    } else {
      setIsLoginButtonDisabled(true);
    }
  }, [username, password]);

  const handleUsernameChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setUsername(e.target.value);
  };

  const handlePasswordChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setPassword(e.target.value);
  };

  const onSubmit = useConstCallback<FormEventHandler<HTMLFormElement>>((e) => {
    e.preventDefault();

    setIsLoginButtonDisabled(true);

    const formElement = e.target as HTMLFormElement;

    //NOTE: Even if we login with email Keycloak expect username and password in
    //the POST request.
    formElement
      .querySelector("input[name='email']")
      ?.setAttribute("name", "username");

    formElement.submit();

    setIsLoginButtonDisabled(false);
  });

  return (
    <Template
      {...{ kcContext, i18n, doUseDefaultCss, classes }}
      displayInfo={
        realm.password && realm.registrationAllowed && !registrationDisabled
      }
      displayWide={realm.password && social.providers !== undefined}
      headerNode="Pour commencer, veuillez vous connecter"
      infoNode={
        <div id="kc-registration">
          <span>
            {msg("noAccount")}
            <a tabIndex={6} href={url.registrationUrl}>
              {msg("doRegister")}
            </a>
          </span>
        </div>
      }
    >
      <div
        id="kc-form"
        className={clsx(
          realm.password &&
            social.providers !== undefined &&
            getClassName("kcContentWrapperClass")
        )}
      >
        <div
          id="kc-form-wrapper"
          className={clsx(
            realm.password &&
              social.providers && [
                getClassName("kcFormSocialAccountContentClass"),
                getClassName("kcFormSocialAccountClass"),
              ]
          )}
        >
          {realm.password && (
            <form
              id="kc-form-login"
              onSubmit={onSubmit}
              action={url.loginAction}
              method="post"
            >
              <div className={getClassName("kcFormGroupClass")}>
                {!usernameHidden &&
                  (() => {
                    const label = "email";
                    const autoCompleteHelper: typeof label = label;

                    return (
                      <>
                        <label
                          htmlFor={autoCompleteHelper}
                          className={getClassName("kcLabelClass")}
                        >
                          Adresse e-mail
                        </label>
                        <input
                          tabIndex={1}
                          id={autoCompleteHelper}
                          className={getClassName("kcInputClass")}
                          //NOTE: This is used by Google Chrome auto fill so we use it to tell
                          //the browser how to pre fill the form but before submit we put it back
                          //to username because it is what keycloak expects.
                          name={autoCompleteHelper}
                          defaultValue={login.username ?? ""}
                          type="text"
                          autoFocus={true}
                          autoComplete="off"
                          placeholder="E-mail *"
                          onChange={handleUsernameChange}
                        />
                      </>
                    );
                  })()}
              </div>
              <div className={getClassName("kcFormGroupClass")}>
                <label
                  htmlFor="password"
                  className={getClassName("kcLabelClass")}
                >
                  Mot de passe
                </label>
                <input
                  tabIndex={2}
                  id="password"
                  className={getClassName("kcInputClass")}
                  name="password"
                  type="password"
                  autoComplete="off"
                  placeholder="Mot de passe *"
                  onChange={handlePasswordChange}
                />
              </div>
              <div
                id="kc-form-buttons"
                className={getClassName("kcFormGroupClass")}
              >
                <input
                  type="hidden"
                  id="id-hidden-input"
                  name="credentialId"
                  {...(auth?.selectedCredential !== undefined
                    ? {
                        value: auth.selectedCredential,
                      }
                    : {})}
                />
                <input
                  tabIndex={4}
                  className={clsx(
                    getClassName("kcButtonClass"),
                    getClassName("kcButtonPrimaryClass"),
                    getClassName("kcButtonBlockClass"),
                    getClassName("kcButtonLargeClass")
                  )}
                  name="login"
                  id="kc-login"
                  type="submit"
                  value="Se connecter"
                  disabled={isLoginButtonDisabled}
                />
              </div>
              <div className={getClassName("kcFormOptionsWrapperClass")}>
                {realm.resetPasswordAllowed && (
                  <span>
                    <a tabIndex={5} href={url.loginResetCredentialsUrl}>
                      J’ai oublié mon mot de passe
                    </a>
                  </span>
                )}
              </div>
            </form>
          )}
        </div>
      </div>
    </Template>
  );
}
