import type { PageProps } from "keycloakify/login/pages/PageProps";
import { useGetClassName } from "keycloakify/login/lib/useGetClassName";
import type { KcContext } from "../kcContext";
import type { I18n } from "../i18n";
import { clsx } from "keycloakify/tools/clsx";
import { useEffect, useState } from "react";

export default function LoginUpdatePassword(
  props: PageProps<
    Extract<KcContext, { pageId: "login-update-password.ftl" }>,
    I18n
  >
) {
  const { kcContext, i18n, doUseDefaultCss, Template, classes } = props;

  const { url, username } = kcContext;

  const { getClassName } = useGetClassName({
    doUseDefaultCss,
    classes,
  });

  const [newPassword, setNewPassword] = useState<string>("");
  const [passwordConfirm, setPasswordConfirm] = useState<string>("");
  const [
    isLoginUpdatePasswordButtonDisabled,
    setIsLoginUpdatePasswordButtonDisabled,
  ] = useState(true);

  useEffect(() => {
    if (newPassword.length > 0 || passwordConfirm.length > 0) {
      setIsLoginUpdatePasswordButtonDisabled(false);
    } else {
      setIsLoginUpdatePasswordButtonDisabled(true);
    }
  }, [newPassword, passwordConfirm]);

  const handleNewPasswordChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setNewPassword(e.target.value);
  };

  const handlePasswordConfirmChange = (
    e: React.ChangeEvent<HTMLInputElement>
  ) => {
    setPasswordConfirm(e.target.value);
  };

  return (
    <Template
      {...{ kcContext, i18n, doUseDefaultCss, classes }}
      headerNode="Nouveau mot de passe"
      infoNode={<span>footer</span>}
    >
      <form id="kc-passwd-update-form" action={url.loginAction} method="post">
        <div className={getClassName("kcFormGroupClass")}>
          <label htmlFor="username" className={getClassName("kcLabelClass")}>
            E-mail associé au compte
          </label>
          <input
            tabIndex={1}
            id="username"
            className={getClassName("kcInputClass")}
            name="username"
            type="text"
            autoComplete="off"
            value={username}
            readOnly={true}
          />
        </div>
        <div className={getClassName("kcFormGroupClass")}>
          <label
            htmlFor="password-new"
            className={getClassName("kcLabelClass")}
          >
            Nouveau mot de passe
          </label>
          <input
            tabIndex={2}
            id="password-new"
            className={getClassName("kcInputClass")}
            name="password-new"
            type="password"
            autoComplete="off"
            placeholder="Mot de passe"
            onChange={handleNewPasswordChange}
          />
        </div>
        <div className={getClassName("kcFormGroupClass")}>
          <label
            htmlFor="password-confirm"
            className={getClassName("kcLabelClass")}
          >
            Confirmer votre nouveau mot de passe
          </label>
          <input
            tabIndex={2}
            id="password-confirm"
            className={getClassName("kcInputClass")}
            name="password-confirm"
            type="password"
            autoComplete="off"
            placeholder="Mot de passe"
            onChange={handlePasswordConfirmChange}
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
            value="Réinitialiser le mot de passe"
            disabled={isLoginUpdatePasswordButtonDisabled}
          />
        </div>
      </form>
    </Template>
  );
}
