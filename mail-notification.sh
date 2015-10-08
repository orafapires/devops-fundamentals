#!/bin/bash

MR_RELEASE_URL="$MR_BASE_URL/application/$MR_APPLICATION_SLUG/$MR_PLATFORM_SLUG/$VERSION"
MR_IPA_URL=itms-services://?action=download-manifest&url=$MR_BASE_URL/application/$MR_APPLICATION_SLUG/$MR_PLATFORM_SLUG/$VERSION/app.plist

APP_IMAGE="$MR_BASE_URL/media/logos/$MR_APPLICATION_SLUG.png"
RELEASE_QR_CODE="$MR_RELEASE_URL/qrcode/"
APP_RELEASES="$MR_BASE_URL/application/$MR_APPLICATION_SLUG/$MR_PLATFORM_SLUG/"
APP_PLATFORMS="$MR_BASE_URL/application/$MR_APPLICATION_SLUG/"

SUBJECT="Centauro mCommerce iOS - Release $VERSION"
DESTINATION="$MR_DESTINATION_MAIL"
cat << ENDOFMESSAGE | mutt -e 'set content_type=text/html' -s "$SUBJECT" "$DESTINATION"
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;">
  <head>
	    <meta name="viewport" content="width=device-width" />
			    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
					    <title>$SUBJECT</title>
							  </head>
								  <body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; -webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; margin: 0; padding: 0;">&#13;
									&#13;
									<table bgcolor="#BEBEBE" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; width: 100%; margin: 0; padding: 0;"><tr style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"><td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"></td>&#13;
										<td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto; padding: 0;">&#13;
											  &#13;
													  <div style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; max-width: 600px; display: block; margin: 0 auto; padding: 15px;">&#13;
															    <table style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; width: 100%; margin: 0; padding: 0;"><tr style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"><td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"><img src="$APP_IMAGE" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; max-width: 100%; margin: 0; padding: 0;" /></td>&#13;
																			<td align="right" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"><h6 style="font-family: HelveticaNeue-Light,'Helvetica Neue Light','Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif; line-height: 1.1; color: #333; font-weight: 900; font-size: 14px; text-transform: uppercase; margin: 0; padding: 0;">$SUBJECT</h6></td>&#13;
																				      </tr></table></div>&#13;
																								  &#13;
																										</td>&#13;
																											<td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"></td>&#13;
																											      </tr></table><table style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; width: 100%; margin: 0; padding: 0;"><tr style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"><td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"></td>&#13;
																															<td bgcolor="#FFFFFF" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto; padding: 0;">&#13;
																																  &#13;
																																		  <div style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; max-width: 600px !important; margin: 0 auto; padding: 0;">&#13;
																																				    &#13;
																																							    <div style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; width: auto !important; float: none !important; margin: 0; padding: 0;">&#13;
																																										      <table style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; width: 100%; margin: 0; padding: 0;"><tr style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"><td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 15px;">				&#13;
																																															    <h4 style="font-family: HelveticaNeue-Light,'Helvetica Neue Light','Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif; line-height: 1.1; color: #000; font-weight: 500; font-size: 23px; margin: 0 0 15px; padding: 0;">$SUBJECT</h4>				&#13;
																																																			    <p style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; font-weight: 400; font-size: 14px; line-height: 1.6; margin: 0 0 10px; padding: 0;">Notas do release desta versão:</p>&#13;
																																																							    &#13;
																																																											    <p style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; font-weight: 400; font-size: 14px; line-height: 1.6; background-color: #ECF8FF; margin: 0 0 15px; padding: 15px;">&#13;
																																																															      $RELEASE_NOTE&#13;
																																																																				    </p>&#13;
																																																																								    &#13;
																																																																												    <p style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; font-weight: 400; font-size: 14px; line-height: 1.6; margin: 0 0 10px; padding: 0;">Este release foi gerado automaticamente.</p>&#13;
																																																																																    <img src="https://chart.googleapis.com/chart?chf=bg,s,65432100&amp;chs=220x150&amp;cht=qr&amp;chl=$RELEASE_QR_CODE" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; max-width: 100%; margin: 0; padding: 0;" /><p style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; font-weight: 400; font-size: 14px; line-height: 1.6; margin: 0 0 10px; padding: 0;">Caso tenha um dispositivo compatível, faça o download pelo QR Code.</p>&#13;
																																																																																				    <p style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; font-weight: 400; font-size: 14px; line-height: 1.6; margin: 0 0 10px; padding: 0;">Caso não tenha um aplicativo de leitor de barras, recomendamos o BarCode Scanner. Basta procurar no Google Play e baixá-lo.</p>&#13;
																																																																																								  </td>&#13;
																																																																																											</tr></table></div>&#13;
																																																																																												    &#13;
																																																																																															    <div style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; width: auto !important; float: none !important; margin: 0; padding: 0;">&#13;
																																																																																																		      <table style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; width: 100%; margin: 0; padding: 0;"><tr style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"><td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 15px;">				&#13;
																																																																																																							    <ul style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; font-weight: 400; font-size: 14px; line-height: 1.6; display: block; background-color: #ebebeb; list-style-type: none; margin: 0 0 10px; padding: 0;"><li style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; display: block; list-style-position: inside; margin: 0; padding: 0;">&#13;
																																																																																																												<a href="$MR_APK_URL" target="_blank" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; color: #666; text-decoration: none; cursor: pointer; border-bottom-color: #777; border-bottom-width: 1px; border-bottom-style: solid; border-top-color: #FFF; border-top-width: 1px; border-top-style: solid; display: block; margin: 0; padding: 10px 16px;">&#13;
																																																																																																															  <h5 style="font-family: HelveticaNeue-Light,'Helvetica Neue Light','Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif; line-height: 1.1; color: #000; font-weight: 900; font-size: 17px; margin: 0; padding: 0;">Download »</h5>&#13;
																																																																																																																			</a>&#13;
																																																																																																																					      </li>&#13;
																																																																																																																										      <li style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; display: block; list-style-position: inside; margin: 0; padding: 0;"><a href="$APP_RELEASES" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; color: #666; text-decoration: none; cursor: pointer; border-bottom-color: #777; border-bottom-width: 1px; border-bottom-style: solid; border-top-color: #FFF; border-top-width: 1px; border-top-style: solid; display: block; margin: 0; padding: 10px 16px;">Lista de releases »</a></li>&#13;
																																																																																																																															      <li style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; display: block; list-style-position: inside; margin: 0; padding: 0;"><a href="$APP_LAST_RELEASE" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; color: #666; text-decoration: none; cursor: pointer; border-bottom-color: #777; border-bottom-width: 1px; border-bottom-style: solid; border-top-color: #FFF; border-top-width: 1px; border-top-style: solid; display: block; margin: 0; padding: 10px 16px;">Último release »</a></li>&#13;
																																																																																																																																				      <li style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; display: block; list-style-position: inside; margin: 0; padding: 0;"><a href="$APP_PLATFORMS" style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; color: #666; text-decoration: none; cursor: pointer; border-bottom-color: #777; border-bottom-width: 0; border-bottom-style: solid; border-top-color: #FFF; border-top-width: 1px; border-top-style: solid; display: block; margin: 0; padding: 10px 16px;">Plataformas da aplicação »</a></li>&#13;
																																																																																																																																									    </ul></td>&#13;
																																																																																																																																													</tr></table></div>&#13;
																																																																																																																																														    <div style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; display: block; clear: both; margin: 0; padding: 0;"></div>			&#13;
																																																																																																																																																	  </div>&#13;
																																																																																																																																																			</td>&#13;
																																																																																																																																																				<td style="font-family: 'Helvetica Neue',Helvetica,Helvetica,Arial,sans-serif; margin: 0; padding: 0;"></td>&#13;
																																																																																																																																																				      </tr></table></body>
																																																																																																																																																							</html>


																																																																																																																																																							ENDOFMESSAGE

