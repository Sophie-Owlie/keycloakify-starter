<#macro emailLayout>
<html>
<head>
</head>
<body>

<table
  role="presentation"
  border="0"
  cellpadding="0"
  cellspacing="0"
  style="
    border-collapse: separate;
    min-width: 100%;
    background-color: #3177ff;
    width: 100%;
    padding: 5rem;
  "
>
  <tbody>
    <tr>
      <td
        style="
          font-family: sans-serif;
          font-size: 14px;
          vertical-align: top;
          display: block;
          max-width: 580px;
          padding: 10px;
          width: 580px;
          margin: 0 auto;
        "
        width="580"
        valign="top"
      >
        <div
          style="
            box-sizing: border-box;
            display: block;
            margin: 0 auto;
            max-width: 580px;
            padding: 10px;
          "
        >
          <table
            role="presentation"
            style="
              box-shadow: rgba(0, 0, 0, 0.3) 60px 60px 40px -7px;
              border-collapse: separate;
              min-width: 100%;
              background: #ffffff;
              border-radius: 5px;
              width: 100%;
            "
            width="100%"
          >
            <tbody>
              <tr>
                <td
                  style="
                    font-family: sans-serif;
                    font-size: 14px;
                    vertical-align: top;
                    box-sizing: border-box;
                    padding: 20px;
                  "
                  valign="top"
                >
                  <div style="padding: 20px 0">
                    <table
                      role="presentation"
                      border="0"
                      cellpadding="0"
                      cellspacing="0"
                      style="
                        border-collapse: separate;
                        min-width: 100%;
                        width: 100%;
                      "
                      width="100%"
                    >
                      <tbody>
                        <tr>
                          <td style="font-family: sans-serif; font-size: 14px; vertical-align: top; text-align: center;" valign="top" align="center">
                            <img
                              src="data:image/png;base64,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"
                              alt="MyPack Logo"
                            />
                          </td>
                        </tr>

                        <tr>
                          <td>
                            <p
                              style="
                                font-weight: bold;
                                text-align: center;
                                font-size: 1.1rem;
                              "
                            >
                              <#nested "subject">
                            </p>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>

                  <hr style="opacity: 0.2" />

                  <#if realmName??>
                  <table width="100%" bgcolor="#ffffff" cellspacing="0" cellpadding="15">
                  <tr>
                  <td>
                  <font style="font-size:16px;" size="5"><b>
                  ${realmName}
                  </b></font>
                  </td>
                  </tr>
                  </table>
                  </#if>

                  <#nested "text">

                  <#if link??>
                  <table
                    role="presentation"
                    border="0"
                    cellpadding="0"
                    cellspacing="0"
                    class="m_-4934092667319585505btn-primary"
                    style="
                      border-collapse: separate;
                      box-sizing: border-box;
                      min-width: 100%;
                      width: 100%;
                    "
                    width="100%"
                  >
                    <tbody>
                      <tr>
                        <td
                          align="center"
                          style="
                            font-family: sans-serif;
                            font-size: 14px;
                            vertical-align: top;
                            padding-top: 15px;
                            padding-bottom: 20px;
                          "
                          valign="top"
                        >
                          <table
                            role="presentation"
                            border="0"
                            cellpadding="0"
                            cellspacing="0"
                            style="
                              border-collapse: separate;
                              min-width: auto;
                              width: 100%;
                            "
                          >
                            <tbody>
                              <tr>
                                <td
                                  style="
                                    font-family: sans-serif;
                                    font-size: 14px;
                                    vertical-align: top;
                                    border-radius: 5px;
                                    text-align: center;
                                    background-color: #3758f9;"
                                  valign="top"
                                  align="center"
                                  bgcolor="#3758F9"
                                >
                                  <a href="${link}"
                                    style="
                                      border: solid 1px #3758f9;
                                      border-radius: 5px;
                                      box-sizing: border-box;
                                      display: inline-block;
                                      font-size: 14px;
                                      font-weight: normal;
                                      margin: 0;
                                      padding: 12px 25px;
                                      text-decoration: none;
                                      background-color: #3758f9;
                                      border-color: #3758f9;
                                      color: #ffffff;
                                    "
                                    target="_blank"
                                  >
                                  <#nested "linkText">
                                  </a>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  </#if>

                  <#nested "footer">

                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
  </tbody>
</table>

</body>
</html>
</#macro>