X-GM-THRID: 6805849851722465280
X-Received: by 2002:a19:ee0f:: with SMTP id g15mr1540885lfb.213.1584610401518;
        Thu, 19 Mar 2020 02:33:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:96:: with SMTP id 22ls387735ljq.0.gmail; Thu, 19
 Mar 2020 02:33:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtEBG40UCy/rQETbmRweaj6SUvNaO4KWixAsdUQL+6kiDi44P6un09rtJljLSO1igaXCugg
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr1693504ljk.220.1584610399848;
        Thu, 19 Mar 2020 02:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584610399; cv=none;
        d=google.com; s=arc-20160816;
        b=K5GWrSwX6LtBhWO70F+5GF2x8UFzFmFHkx6bjYqCFy6w35QBBZJPItE+w+/rmONWS4
         JhthG1ZzOb5n1GNowDEuIZSGigSneOpy1yqKYMU7AM0yi6qNUPcrVV8qXXSD8gP9qA37
         JzZc58gBYmOjhAa+XI40aVhy+lY9/85PVrcuVo/N8+6tcpgxvEuqWWfZY12SIM2mRyzj
         q8/fWT/TVxrtuVC62nN4Zex+glRWjWIKqGL1WAAIDXaiC0WyT1clDjGSyTlAICuyFb5c
         4GBlol+aUM2HtoQJc+7GoBzZjMmzQpSBsfTl+Tpus6rnHA2awNbRcyABkXk3rwpmmmdx
         vlXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=uZxH4IenKjwza2xEER797c75qq/PJPMb0sEg1Pf99us=;
        b=GA45cfgxHUv4hXsqIcgEHdtYOCumVjD06hX9AzAvA8rNdJY+CQBq1Jn/gDNlEccQDZ
         COquZdFAKeL28jux3LIUqrEbxVGWi6AjQJ93b+vqdHks6MiIlt12Brdo01QjIDXijY/u
         OVlPhK+Akhin1XlawiAUaQ3/al3+AN8GHEsv4SgsRSkgAoL41qAuxjCE/1H0JO6Sk/2q
         Q7UrUeZUkuaDR3M5DT4UJjDq7KivkPcLgyu1sxoHupG3OPeU7xO4HlRaJlXgJnpFaCNJ
         Oz7uRtz18m6AdV8U1BezyP7GYIIUnPnbzm361+gN7H87JM0ds11N9+KVxLgBXZJOpSTW
         FxBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id v191si54211lfa.4.2020.03.19.02.33.19
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26549 invoked from network); 19 Mar 2020 09:33:18 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:33:18 -0000
Date: Thu, 19 Mar 2020 15:03:09 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
Message-ID: <20200319093301.GA2453@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index 815dfee11968..f69e9453ad45 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -199,7 +199,7 @@ int rtw_cmd_thread(void *context)
 				rtw_free_cmd_obj(pcmd);
 			} else {
 				/* todo: !!! fill rsp_buf to pcmd->rsp if (pcmd->rsp!= NULL) */
-				pcmd_callback(pcmd->padapter, pcmd);/* need conider that free cmd_obj in rtw_cmd_callback */
+				pcmd_callback(pcmd->padapter, pcmd);/* need consider that free cmd_obj in rtw_cmd_callback */
 			}
 		} else {
 			RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("%s: cmdcode = 0x%x callback not defined!\n", __func__, pcmd->cmdcode));
-- 
2.20.1


