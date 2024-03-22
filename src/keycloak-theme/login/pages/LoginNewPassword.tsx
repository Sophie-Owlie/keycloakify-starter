import type { PageProps } from "keycloakify/login/pages/PageProps";
import { useGetClassName } from "keycloakify/login/lib/useGetClassName";
import type { KcContext } from "../kcContext";
import type { I18n } from "../i18n";
import { clsx } from "keycloakify/tools/clsx";

export default function LoginNewPassword(
  props: PageProps<
    Extract<KcContext, { pageId: "login-new-password.ftl" }>,
    I18n
  >
) {
  const { kcContext, i18n, doUseDefaultCss, Template, classes } = props;

  const { url } = kcContext;

  const { getClassName } = useGetClassName({
    doUseDefaultCss,
    classes,
  });

  return (
    <Template
      {...{ kcContext, i18n, doUseDefaultCss, classes }}
      headerNode="Nouveau mot de passe"
      infoNode={<span>footer</span>}
    >
      <form id="kc-new-password-form" action={url.loginAction} method="post">
        <div className={getClassName("kcFormGroupClass")}>
          <label htmlFor="email" className={getClassName("kcLabelClass")}>
            E-mail associé au compte
          </label>
          <input
            tabIndex={1}
            id="email"
            className={getClassName("kcInputClass")}
            name="email"
            type="text"
            autoComplete="off"
            placeholder="john.doe@gmail.com"
            disabled
          />
        </div>
        <div className={getClassName("kcFormGroupClass")}>
          <label htmlFor="password" className={getClassName("kcLabelClass")}>
            Nouveau mot de passe
          </label>
          <input
            tabIndex={2}
            id="password"
            className={getClassName("kcInputClass")}
            name="password"
            type="password"
            autoComplete="off"
            placeholder="Mot de passe"
          />
          <p>Créez un mot de passe de 8 caractères minimum.</p>
        </div>
        <div className={getClassName("kcFormGroupClass")}>
          <label
            htmlFor="confirm_password"
            className={getClassName("kcLabelClass")}
          >
            Confirmer votre nouveau mot de passe
          </label>
          <input
            tabIndex={2}
            id="confirm_password"
            className={getClassName("kcInputClass")}
            name="confirm_password"
            type="confirm_password"
            autoComplete="off"
            placeholder="Mot de passe"
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
          />
        </div>
      </form>
    </Template>
  );
}
