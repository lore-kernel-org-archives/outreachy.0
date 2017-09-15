X-GM-THRID: 6465879632669310976
X-Received: by 10.107.5.12 with SMTP id 12mr2351452iof.76.1505457532363;
        Thu, 14 Sep 2017 23:38:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.76 with SMTP id c73ls524845itb.10.canary-gmail; Thu, 14
 Sep 2017 23:38:51 -0700 (PDT)
X-Received: by 10.98.204.139 with SMTP id j11mr13007893pfk.11.1505457531845;
        Thu, 14 Sep 2017 23:38:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457531; cv=none;
        d=google.com; s=arc-20160816;
        b=e12e+kh3Ba8pfj8vLdFam1B+kleXtTnSpaaqSFPJ43/ozmdGJoXXX0+jsGFSDLaaX5
         GgiO35dvWCZyPubwEPIWG5HlhCuKKi9zgX8SNdHoKdXYghcEnitiLhoHXxFnwDPLMIWu
         tj1WWaz0udX1IrshvhTRgvg5ym3kRZ9RJUzWpCeI+kcdhxqUU2iUM/zKPZcusHYFBCeR
         bKwuprKsoyLqEi/VPEFFeSEKt6wY6oettpEtfODqHwqa+JOP6JvP+SacGltH6rpgWpiD
         qo7jNtkTQXzR6HdlfUVvRBmagyIHMj3Wy6CwPaAcPuJu9TvnsZ73GvcwCTJ55MF4AtQz
         bQkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=Zfv633TPxT1mkHth7FMuIrPwsHcMqUmBixbysdVaju0=;
        b=qyqH+ac5SbnSuSeqQ83qtpRgAu+J872Pw4IWGsrwPOjA9gxLYi2U4ugAv+Dtzpdt0o
         jygTxPJ6xbrMVDqHcz6cBgrM9F+wf/gbgZ9f+6gahoDreEHBLcx1qua4ZznojfGduuR6
         LMPAwNOIUgdzazzLjIKf4/LUULcQnjqeTakkjwPPDQtn5LAxdJ8hQhy9KvUBSgsneH2d
         WbNx5Nv/SAg+jIZrmBwjQuk8GXxAQtAPNTc8sXgs9L2HxshRkEBdFvBLoDzXPvgF6GXx
         3mnCHXEx4HsZ/O/Ips8KZ8bx1i3CPhNAUwMmBuBRw7Ar69Ma9JM4uLNFECwxIl2A+3Ru
         b0vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LyOTpo9R;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s81si17669pfg.19.2017.09.14.23.38.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LyOTpo9R;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id h4so825895pfk.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Zfv633TPxT1mkHth7FMuIrPwsHcMqUmBixbysdVaju0=;
        b=LyOTpo9RooRPC/FxtLRPlTZddDZd8UnupHXKXZqSa6WNkEoQ9QyUHuAgsxyU2aaVAa
         MswAncXciHFkH1X4r35ARulggSWVqpaSRjFOvp8Kj4jVv+GtzKgAHM6B1XwjoOir5B4X
         BrMqJP2ckKgOXMij9KTmhViED8DbwR2ELQmnxHVv6C+luC8/Mmd4Hvb1fymOpVpDJi1u
         C5u0PwKQQAO6AechoJnHKnpGJgxaKE2EJS+zk0i+Z6lQEIJIGSivEudkp44eltsyfrri
         lOACN7fGlq6Cqr9/nwr0Irvkp9rio9VNBzYu2MlUnUhdhIZkRHrCXPci/ztPiPZeIhUh
         hd/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Zfv633TPxT1mkHth7FMuIrPwsHcMqUmBixbysdVaju0=;
        b=X4Ogn4HemQ98/WicqfpFfAkaSimv4TCfqqxkUJwGE59dAKSa9NhU3ZBCE3ODd8RoPt
         iRERRpR7Qf+FfOL8CIPGjPu8+Iorh+xpk6kBMP5hRtYwVN370A8VVUB0G+25M8u5r4w+
         F86+0dneLDMpekFkb8ltiN1QPd7iTSfMOErvIZGAB33FNKXCuEXTyNHoHpY5D8/QAvGc
         Tlb0/QyfxfX3e4KM1KPqx2EE+yiNa+lFxXpu2pSykJT70I03AN0ACUwJP5cbDuNRr++y
         ZT3q8A0VaHjNXCP+tinsUxLygydhX7eBcjhFT2IFakueP8SRRj4T/5rwS/O+EAJXVdDg
         xP7w==
X-Gm-Message-State: AHPjjUg3F4OWKWH0qxVY2XRn1H0NfqY6MCgW5XhngMiqOQ4H4s0+fbfb
	o2Is++TkfWHUYc6m0jE=
X-Google-Smtp-Source: ADKCNb56e02+Q1iMJwRvdEx79Pl/4gKYlcEFxzPugEYAF4q3NiYyYE2roKsrTsVoYxRBQ/jBczGHBA==
X-Received: by 10.84.214.151 with SMTP id j23mr26722367pli.21.1505457531613;
        Thu, 14 Sep 2017 23:38:51 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id c7sm797579pfc.55.2017.09.14.23.38.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:51 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 5/8] staging: lustre: ldlm: fix lines over 80 characters in ldlm_lockd
Date: Fri, 15 Sep 2017 12:08:20 +0530
Message-Id: <f300f41c48221e6104afd9b8c7975e3547d5920b.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index e270733..1b2dbb9 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -184,7 +184,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
 			LASSERT(lock->l_lvb_data);
 
 			if (unlikely(lock->l_lvb_len < lvb_len)) {
-				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+				LDLM_ERROR(lock,
+					   "Replied LVB is larger than expectation, expected = %d, replied = %d",
 					   lock->l_lvb_len, lvb_len);
 				rc = -EINVAL;
 				goto out;
@@ -598,7 +599,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
 
 	lock = ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
 	if (!lock) {
-		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
+		CDEBUG(D_DLMTRACE,
+		       "callback on lock %#llx - lock disappeared\n",
 		       dlm_req->lock_handle[0].cookie);
 		rc = ldlm_callback_reply(req, -EINVAL);
 		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
-- 
2.7.4


