import type { PageProps } from "keycloakify/login/pages/PageProps";
import { useGetClassName } from "keycloakify/login/lib/useGetClassName";
import type { KcContext } from "../kcContext";
import type { I18n } from "../i18n";
import { clsx } from "keycloakify/tools/clsx";
import { useEffect, useState } from "react";

export default function LoginResetPassword(
  props: PageProps<
    Extract<KcContext, { pageId: "login-reset-password.ftl" }>,
    I18n
  >
) {
  const { kcContext, i18n, doUseDefaultCss, Template, classes } = props;

  const { url } = kcContext;

  const { getClassName } = useGetClassName({
    doUseDefaultCss,
    classes,
  });

  const [username, setUsername] = useState<string>("");
  const [
    isLoginResetPasswordButtonDisabled,
    setIsLoginResetPasswordButtonDisabled,
  ] = useState(true);

  useEffect(() => {
    if (username.length > 0) {
      setIsLoginResetPasswordButtonDisabled(false);
    } else {
      setIsLoginResetPasswordButtonDisabled(true);
    }
  }, [username]);

  const handleUsernameChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setUsername(e.target.value);
  };

  return (
    <Template
      {...{ kcContext, i18n, doUseDefaultCss, classes }}
      headerNode="Réinitialiser le mot de passe"
      infoNode={<span>footer</span>}
    >
      <form id="kc-reset-password-form" action={url.loginAction} method="post">
        <div className={getClassName("kcFormGroupClass")}>
          <label htmlFor="username" className={getClassName("kcLabelClass")}>
            Indiquez l’adresse associée à votre compte
          </label>
          <input
            tabIndex={1}
            id="username"
            className={getClassName("kcInputClass")}
            name="username"
            type="text"
            autoFocus={true}
            autoComplete="off"
            placeholder="E-mail *"
            onChange={handleUsernameChange}
          />
        </div>
        <div id="kc-form-buttons" className={getClassName("kcFormGroupClass")}>
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
            value="Envoyer"
            disabled={isLoginResetPasswordButtonDisabled}
          />
        </div>
        <div className={getClassName("kcFormOptionsWrapperClass")}>
          <span>
            <a tabIndex={5} href={url.loginUrl}>
              Revenir à la connexion
            </a>
          </span>
        </div>
      </form>
    </Template>
  );
}
