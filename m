X-GM-THRID: 6950980105413853184
X-Received: by 2002:ac2:58c7:: with SMTP id u7mr20269079lfo.495.1618401171482;
        Wed, 14 Apr 2021 04:52:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls322131ljf.7.gmail; Wed, 14 Apr
 2021 04:52:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwC22tJg5unT4WYrKVsRJxijFqcDD947sOGwWUZOcfkAWOzWQtvYzs1FdLg46Dv1wx0sfQe
X-Received: by 2002:a2e:88cc:: with SMTP id a12mr23301303ljk.402.1618401169764;
        Wed, 14 Apr 2021 04:52:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618401169; cv=none;
        d=google.com; s=arc-20160816;
        b=MNw57M+01QK+OuGKE6fSb8hCnpsmMeOR5H4fk0H71wviq0oMxGgxgwH2ATf+XCR6mX
         R8Rpe3D+lA3AwmmuOCiLDqXGH3XJk7mt9dF0cRGyt/o7I9ol3geRawp3v6DAZZ2EFyVe
         gO+xDITeEgPLIFLOvUa10S2Mv9GgS11EoHP+rhqcZ9xcqiqJIbw2xONqB4/T1BOimDqa
         smSZjtKlmwRwEidW+ABvL/11ro9oxQ1iqSJzQ7D928dPkpjNOIrm3l/iQGFQR0cjuGtE
         lTSOg5arKejj7yOKxb+JsK0+uqRceVy8zXU6QQwAH+P4IQMf0Y+kyprsaRlDYKYxy9s6
         0qfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zkC+0GDSZPiBQ3vyP0mJ4e2YXFys3MEY7UtDz1Ik6bE=;
        b=WYB4O6m8s3HVvLlJvfOFxaaMWcwvzhqRhgGrPv1/Bmbpo4MU5U77Mta/PHghPU7RX4
         JCBz0IXdLh+jyPC+4BzMx13XvLzkGbLfY9SmQ/0G1azKuJO3xFiWC9VmOinWN+u9bJMu
         i1KHWzYVdNFbdAzVPwQEU1L9Xgv5JnCNV5x8smBfs6xLtI1mUldU2UKPUE5MYLk2wHa6
         L9p8DVxAksM1ycaw3pycsAqUHhhUsb47IrlSkDB6dJ8l7UrAJYAO/AWvZhgL2zL32zx3
         7r+fN/HVgD261NCESUMupnp4Dd37a24ielp6LGwh04LirDlspgXLrurQ68FMIWo8pUCm
         4uyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H0dJqpPs;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id z3si778362lfu.12.2021.04.14.04.52.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 04:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H0dJqpPs;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id w18so23407344edc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 04:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zkC+0GDSZPiBQ3vyP0mJ4e2YXFys3MEY7UtDz1Ik6bE=;
        b=H0dJqpPsPHMwV2BZsAoOIyrhgemVsMa6N45me+IX15vhIthYP25vRTOuuIxa9xRVdR
         zBD+Q9Ixc/PhzFZyrMAk7rxdA4W8B6Xqnal2gf9870r1lIYmiEPD/e9USKwa5HiklLQN
         80jKdh6Uq/tmVZWHqUaijnGIOBdFqlwb/+foVxKwlZNveAocTx5MxfyXztHnnQR9BsoT
         9RVn/Xdz6ClT1+sIMy7q+Rg27jxdoZP4UIyua9BsK2rB/zjk3Ju8uo2GjVkvasE4UleT
         9xNyrmxtPj+54iv53E/l2OUBgSrO889WE95EtEZNoUaJoe9CA919LvUAnBhx1izlULOd
         c+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zkC+0GDSZPiBQ3vyP0mJ4e2YXFys3MEY7UtDz1Ik6bE=;
        b=DRgFvv45iAVgmsMNdQtpnzNp4aTkgh6xcay/I+/BuubiK0VEoCFzyr+Ncdxzhf6wYc
         KrhJwpvn1KxtezHJhWuGueJfT7BgFHL37X+Bq6vFcah+mQJU5fKXMz7JNSNA/cMfD3JE
         t8ngZFZvQSKIdFIMLwNgM6Kq0HyiQG6Od/neJC0dBUT+G7dSbEWO80bfsb3c9EXzpaNI
         gVX0qtcCO1lwg4fOpHWjEX0g3KWtmIfEoFVSwZtdVQOKRtS3hvNiwd5n8ibLlsY26HtR
         CW8LZGHGWakemzjxk59RFaMQBE57OQlsITYVadlIbhcktnzIwLkQBI8vnBDRGzAO1fqY
         hRwA==
X-Gm-Message-State: AOAM531SdCEZyd9FMcHNsnhO46UCwUdJs0QqTD6tbo48wRg4GVl1AOAB
	kv1OVRN98DaoarTLDK/5zrr6ifTcoTnBFju5
X-Received: by 2002:aa7:d588:: with SMTP id r8mr1003516edq.318.1618401169206;
        Wed, 14 Apr 2021 04:52:49 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id ju23sm9780679ejc.17.2021.04.14.04.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 04:52:48 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Wed, 14 Apr 2021 13:52:43 +0200
Message-Id: <20210414115243.32716-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed the led_blink_hdl() function (declaration and definition).
Declared dummy_function() in include/rtw_mlme_ext.h and defined it in
core/rtw_cmd.c. Changed the second parameter of GEN_MLME_EXT_HANDLER
macro to make use of dummy_function().

Reported-by: Julia Lawall <julia.lawall@inria.fr>
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c         | 4 +++-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 3 ++-
 3 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 0297fbad7bce..7b6102a2bb2c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -87,6 +87,8 @@ static struct _cmd_callback rtw_cmd_callback[] = {
 	{GEN_CMD_CODE(_RunInThreadCMD), NULL},/*64*/
 };
 
+u8 dummy_functioni(struct adapter *var0, u8 *var1) { return 0; }
+
 static struct cmd_hdl wlancmds[] = {
 	GEN_DRV_CMD_HANDLER(0, NULL) /*0*/
 	GEN_DRV_CMD_HANDLER(0, NULL)
@@ -150,7 +152,7 @@ static struct cmd_hdl wlancmds[] = {
 
 	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
+	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), dummy_function) /*60*/
 
 	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl) /*61*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl) /*62*/
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 873d3792ac8e..963ea80083c8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -6189,15 +6189,6 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
 	return	H2C_SUCCESS;
 }
 
-u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf)
-{
-
-	if (!pbuf)
-		return H2C_PARAMETERS_ERROR;
-
-	return	H2C_SUCCESS;
-}
-
 u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf)
 {
 	return	H2C_REJECTED;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 5e6cf63956b8..57977da78eb3 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -745,11 +745,12 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 set_ch_hdl(struct adapter *padapter, u8 *pbuf);
 u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf);	/* Kurt: Handling DFS channel switch announcement ie. */
 u8 tdls_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf);
 
+/* Dummy function used to fill elements of an array of function pointers */
+u8 dummy_function(struct adapter *, u8 *);
 
 #define GEN_DRV_CMD_HANDLER(size, cmd)	{size, &cmd ## _hdl},
 #define GEN_MLME_EXT_HANDLER(size, cmd)	{size, cmd},
-- 
2.31.1


