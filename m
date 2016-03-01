X-GM-THRID: 6257136391143030784
X-Received: by 10.31.47.131 with SMTP id v125mr17772354vkv.11.1456853093029;
        Tue, 01 Mar 2016 09:24:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.142 with SMTP id u14ls3008648qge.82.gmail; Tue, 01 Mar
 2016 09:24:52 -0800 (PST)
X-Received: by 10.31.152.208 with SMTP id a199mr17814132vke.4.1456853092525;
        Tue, 01 Mar 2016 09:24:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id yd9si4497493pab.1.2016.03.01.09.24.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:24:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id 124so54696108pfg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JtJ/gqmaprRcWl54Fc5ou7zgr7rFRVDG1apSdWu20wk=;
        b=E2pMOPXIbIJ84x9sSDjiLTipGg2wYtft00pTtX2C8yfp2J+MA9b8OktDP84TTuQnBf
         bfnq/KSxnwj7H4/NUTO/Q5YKuyvc4tVt0a6xzt5Spg/eX4dlPIKfzdmYya/ggZzZ8hBF
         0NvJsKE2czO43PmXtjyudTlcrHel4UgqoxTpporEkOSeanBlmoXMhwm8O7Lhc0G7b7yF
         QQKayNNMBDlMS+t5AMicsgfX4/jSpKEzJgNoTPvlsYjRlHf8yCEA+dCKxD4OzHvvIj7o
         Ee7FKOAZ+VsSoGHh1R1qm6mSWSIzdBD6A0xHF7ZI4FMuGBdyPgj+jpZjGlUPEi3i5cNr
         5dhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JtJ/gqmaprRcWl54Fc5ou7zgr7rFRVDG1apSdWu20wk=;
        b=I1bs2RSKhK6t02ZBDImUWDsd1HEWSSHctyFnGelUSwJ4iBfywbdT/T944B2cHZXGu6
         ZBsPyipzMkbzPTf4hRYdSLIQoKu5Er6xKJ95iR3rz1IiX8+29gqJrGnNaa96RJTgjZ8W
         8Tp+W8neMCfzmiV2trIYRhvhket6WHxNRGhRdb2jRvcEenihYkws5oB7HrMW2fbunAtH
         HnScSyc2hVXvxln7nZoc31aXhtHymQNNEXJay6/qFerpnfRKQ7Tynepd7OF3AjKWcNEO
         tKippqqxqRf/AOycPVla0gHABHXxeCd8gXaqvxtMSF+J+CkP7oBsx+6olmpPSmq4R5tB
         m26w==
X-Gm-Message-State: AD7BkJJj5hlnguOQP/PZzFhiDdgsNiZPz2L2V0UHdP5BfSUpOOjoKJUb9Q2GjMBUg3cDig==
X-Received: by 10.98.34.13 with SMTP id i13mr25803581pfi.26.1456853092324;
        Tue, 01 Mar 2016 09:24:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ud10sm47015258pab.27.2016.03.01.09.24.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:24:51 -0800 (PST)
Date: Tue, 1 Mar 2016 22:52:05 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: mdc: Remove unused macro
Message-ID: <20160301172205.GA19758@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro mdc_unpack_acl(req, md) is not used anywhere. Hence, removed
it.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/mdc_request.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c b/drivers/staging/lustre/lustre/mdc/mdc_request.c
index c7a0fa1..b7e3626 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_request.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c
@@ -445,8 +445,6 @@ static int mdc_unpack_acl(struct ptlrpc_request *req, struct lustre_md *md)
 	md->posix_acl = acl;
 	return 0;
 }
-#else
-#define mdc_unpack_acl(req, md) 0
 #endif

 static int mdc_get_lustre_md(struct obd_export *exp,
--
2.1.4


