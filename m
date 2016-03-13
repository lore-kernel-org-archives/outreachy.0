X-GM-THRID: 6261612178902614016
X-Received: by 10.66.221.100 with SMTP id qd4mr15330183pac.0.1457895193873;
        Sun, 13 Mar 2016 11:53:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.162 with SMTP id j31ls3853571qgj.88.gmail; Sun, 13 Mar
 2016 11:53:13 -0700 (PDT)
X-Received: by 10.129.78.78 with SMTP id c75mr15234068ywb.30.1457895193274;
        Sun, 13 Mar 2016 11:53:13 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id i133si1032508ywe.7.2016.03.13.11.53.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 11:53:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id s68so67198115qkh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 11:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WU3DkMMaolfyzWTAcs7eXIi75+QEMOAmmhfbnlZvRpI=;
        b=TIIhOYIt99sG8l+K1BaRCFy2Z1snBtU2KwUXMfNadfBRUadd3nK71KHWelAoQgDjnM
         ndqYeaWpU/Q+DndYzPaT5AVPGYs5OzvDf/0u3HlQsG9auUbOtFUUZw7q4VYUq5+einTx
         C+HcApGbOY5bEvPy1KHBsF6HbB/Adi7dBmLHs4vTFDRLp5D+4lEMTcXGaMeG/98/xgWm
         BIwDtoGfpNcfi8Bvzt/Dx/9ei5sy5i8oRT8lXeI4593z2Ys9ipFfBfF51yT0ko+VrWuU
         h7ylJ/qV6wdTzSI4HaOgBw++9OIK87Im9Hgn5GtMZWnghn8R+gWLksgyPmYPpFhNBMlj
         luEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WU3DkMMaolfyzWTAcs7eXIi75+QEMOAmmhfbnlZvRpI=;
        b=CrSrh8mxWUXjbKju1XK3OpR9Bu8mnmtOV0n5hwY8SlK4FhX/FmQnygrNZhVsRi7s3j
         fs31J9J9wTfW/zbMB+WD6Q1quajN/khzQs/13iC2RsaU6MTb5hm0U3s+o/Ec7qAvpvwj
         i6TtigGKpvv1iEcH8nDKxyV64ppcdpurl7r04xLP/ojZ25B/oB7SCC+Ej+tHq7dfhgUK
         zL91unVMS/K2VGmO9RFIQmo+12ULNqswCRrilENh3C1uFUonCQrZKP7K/9ra9kAvVLrH
         zxrwx1Osy0AJOcjoHhed4HdMmNwPUhPYVxxo8DTN+PPDJX2/yUzUQm5X+YF70QED2vQj
         8fjA==
X-Gm-Message-State: AD7BkJLMa1r9l6K+3ZZ+yLwo+DYn9C6fJB6V7NLTUzURcsa7axZO3RqOW4mnSHFcYWzFBw==
X-Received: by 10.55.79.134 with SMTP id d128mr25318278qkb.73.1457895192794;
        Sun, 13 Mar 2016 11:53:12 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id z62sm8679217qka.26.2016.03.13.11.53.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 11:53:12 -0700 (PDT)
Date: Sun, 13 Mar 2016 15:53:08 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: rtl8712_cmd.c: removes unnecessary
 parentheses
Message-ID: <20160313185308.GA19044@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes unnecessary parentheses that were
causing multiple checkpatch.pl issues.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 50f4002..bef2b89 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -264,9 +264,9 @@ static struct cmd_obj *cmd_hdl_filter(struct _adapter *padapter,
 		 */
 		if (padapter->pwrctrlpriv.pwr_mode > PS_MODE_ACTIVE) {
 			padapter->pwrctrlpriv.pwr_mode = PS_MODE_ACTIVE;
-			_enter_pwrlock(&(padapter->pwrctrlpriv.lock));
+			_enter_pwrlock(&padapter->pwrctrlpriv.lock);
 			r8712_set_rpwm(padapter, PS_STATE_S4);
-			up(&(padapter->pwrctrlpriv.lock));
+			up(&padapter->pwrctrlpriv.lock);
 		}
 		pcmd_r = pcmd;
 		break;
@@ -318,18 +318,18 @@ int r8712_cmd_thread(void *context)
 	struct tx_desc *pdesc;
 	void (*pcmd_callback)(struct _adapter *dev, struct cmd_obj *pcmd);
 	struct _adapter *padapter = context;
-	struct	cmd_priv	*pcmdpriv = &(padapter->cmdpriv);
+	struct	cmd_priv	*pcmdpriv = &padapter->cmdpriv;
 
 	allow_signal(SIGTERM);
 	while (1) {
-		if ((_down_sema(&(pcmdpriv->cmd_queue_sema))) == _FAIL)
+		if ((_down_sema(&pcmdpriv->cmd_queue_sema)) == _FAIL)
 			break;
 		if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
 			break;
 		if (r8712_register_cmd_alive(padapter) != _SUCCESS)
 			continue;
 _next:
-		pcmd = r8712_dequeue_cmd(&(pcmdpriv->cmd_queue));
+		pcmd = r8712_dequeue_cmd(&pcmdpriv->cmd_queue);
 		if (!(pcmd)) {
 			r8712_unregister_cmd_alive(padapter);
 			continue;
@@ -415,7 +415,7 @@ _next:
 	}
 	/* free all cmd_obj resources */
 	do {
-		pcmd = r8712_dequeue_cmd(&(pcmdpriv->cmd_queue));
+		pcmd = r8712_dequeue_cmd(&pcmdpriv->cmd_queue);
 		if (pcmd == NULL)
 			break;
 		r8712_free_cmd_obj(pcmd);
@@ -429,7 +429,7 @@ void r8712_event_handle(struct _adapter *padapter, uint *peventbuf)
 	u8 evt_code, evt_seq;
 	u16 evt_sz;
 	void (*event_callback)(struct _adapter *dev, u8 *pbuf);
-	struct	evt_priv *pevt_priv = &(padapter->evtpriv);
+	struct	evt_priv *pevt_priv = &padapter->evtpriv;
 
 	if (peventbuf == NULL)
 		goto _abort_event_;
-- 
2.7.2


