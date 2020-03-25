X-GM-THRID: 6808150898800328704
X-Received: by 2002:a17:90a:dc83:: with SMTP id j3mr3976964pjv.64.1585146155316;
        Wed, 25 Mar 2020 07:22:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8c8e:: with SMTP id t14ls1780167plo.9.gmail; Wed, 25
 Mar 2020 07:22:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt5+xNAlTlc9Yq2RpZq+KZevpMbYiM74T7MvXDRG2+sV/l4nvCxc/ZrgICX5ZDnabvhHvt9
X-Received: by 2002:a17:902:b183:: with SMTP id s3mr3437785plr.33.1585146153790;
        Wed, 25 Mar 2020 07:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146153; cv=none;
        d=google.com; s=arc-20160816;
        b=URk80d+PU9csa+97TvGZvDaH4S+iwcGuKlIm48fQdVJuOA16iaK/WwKY3r+QvsJB8K
         +nUzRmDez5uWcGPg2rHOcy5YB4ITD9o0ymj6Hsz6/xvTZWK5nwFErZp30T6n72+O+yLB
         T4D21GUk1X5RYY+P6S0OqR7oTq6zNFv2re/VjT7xCJD3DsnhhxHupCg6MevXeLRy89o+
         q/KRztWiUrFU7R2TS42UniovhVnL7iVYlqqZaF9VNCEivGOjJh9XWywtjBedqCQP5hNj
         hh9ebAySOXidMtGE/YBq7WtW59fiV24CsHyPFamC6GQBqSAnjBfzR++AVirfI/A9DBPk
         4ubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=pcFRyCnL2SJ7lsWb00Ktgfpiha1T6QVZTxHpgve0HfA=;
        b=LHIYBI2VcjyrvO8qHufF8M5CiJ3rpFWVJo5AJLLS12c0jUn/s9whJ8945ItyH8hQ/v
         /aJzfhF96g+vFpDJFkYVHbQN6gvByrcaF1X/+W+cmF8ZAr9vgAYaW+ZVa0N4XVr7huTO
         ixe1XOqaemm1It/aHRupECWa3+nG3cg0Pu2FATgYq9OjI3x+gHu+oYFwgzyinPxzY8vB
         lLw/RxeFq6Fjxne9K5OniYmfKnwUMn6QBXYbvI+MPPqw9liej21X8kscFPoGb9Wm+7lr
         F2NRVTl5d8DyQS0HFxQ+3saadENI5JhzlIWACfoGdPhKsZv9IiMeoR4X40FK0K668mkb
         McUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IBvMOXic;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y13si1125628plp.0.2020.03.25.07.22.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IBvMOXic;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id b72so1094373pfb.11
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pcFRyCnL2SJ7lsWb00Ktgfpiha1T6QVZTxHpgve0HfA=;
        b=IBvMOXic3QYDgQSRZGPtISAPOTYAbBG+IPlPXOuv8W5fiiD/2joX9ypEKZDeqzeXtR
         9hv8+1RDYXz/f0teGPl8n/iRkNmc7DMFBw6PpIJ29ObnRdulDiQB9oz0xG2tz6jqMUXp
         cfNHYHvZPQVuVfWaa93mk4GzBZ/ynzZbbl4OwI2Pt+lARObkyRoCkY0JcZy0y8cq5u8F
         RkTgMPqCwAyUj/JuNLaeHL57azs0LRCeL12fOcQb8KK4dMmRY2sVY80+L1JsUZeYigx3
         qbNYX7PL1yYalalmDh8yUsrxxnR4f6kTkc/jcu3VtRtbXItJy3KqVugRDo6VH7/R1OKo
         talw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pcFRyCnL2SJ7lsWb00Ktgfpiha1T6QVZTxHpgve0HfA=;
        b=FtYK3GaLFWDv/NywMVgBnYxhTz9XZyI/T2F46by2+0B/CWPnB2/8K+3d5+uSYzjE4U
         hNV8LIbIvBdD5mSz2kDqDdbq2BDohGHRaNlyvyI6XGkh2bIeRtsW0/wBp8oaVEce1a9R
         ahwmXjKTe+XuxN0qRtRkuyY4xre33eoC5uPLKOqDas/M3tOPAIx+U4iKjYP0C7MlyfUC
         Syn/sZI9dbbYoGuWcyygiUEK0vkcUQEE0a8UxaOyjk8IlysTsTfRFFL9ybFKCuI7lQ0K
         NHAAOMbGx2vZOjibdn/ujiiboBy0Eq4tfiz9MnrDlDznYs6FuhB0jN7c1+swKmgUJTDz
         5xsw==
X-Gm-Message-State: ANhLgQ1FbF8R/GaUeI8raEHN4Uhe9994thMPLk74JMNDBsp4QQuazrVd
	5yi1acPGIqzWpf/TtPC8pZ+ztlMfYS0=
X-Received: by 2002:a63:7359:: with SMTP id d25mr3285349pgn.2.1585146152947;
        Wed, 25 Mar 2020 07:22:32 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id x4sm16570514pgi.76.2020.03.25.07.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:22:32 -0700 (PDT)
Date: Wed, 25 Mar 2020 19:52:26 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: Remove multiple assignments
Message-ID: <20200325142226.GA14711@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove multiple assignments by factorizing them.
Problem found using checkpatch.pl:-
CHECK: multiple assignments should be avoided

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 61a9bf61b976..744b40dd4cf0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -194,7 +194,9 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 
 	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 - ((SIZE_PTR)(pcmdpriv->rsp_allocated_buf) & 3);
 
-	pcmdpriv->cmd_issued_cnt = pcmdpriv->cmd_done_cnt = pcmdpriv->rsp_cnt = 0;
+	pcmdpriv->cmd_issued_cnt = 0;
+	pcmdpriv->cmd_done_cnt = 0;
+	pcmdpriv->rsp_cnt = 0;
 
 	mutex_init(&pcmdpriv->sctx_mutex);
 exit:
@@ -2138,7 +2140,8 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 		goto exit;
 	}
 
-	psta->aid = psta->mac_id = passocsta_rsp->cam_id;
+	psta->aid = passocsta_rsp->cam_id;
+	psta->mac_id = passocsta_rsp->cam_id;
 
 	spin_lock_bh(&pmlmepriv->lock);
 
-- 
2.17.1


