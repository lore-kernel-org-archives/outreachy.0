X-GM-THRID: 6260476384901070848
X-Received: by 10.182.27.101 with SMTP id s5mr3370534obg.35.1457630746812;
        Thu, 10 Mar 2016 09:25:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.196.36 with SMTP id ij4ls881016obc.61.gmail; Thu, 10 Mar
 2016 09:25:46 -0800 (PST)
X-Received: by 10.182.196.101 with SMTP id il5mr3351429obc.26.1457630746362;
        Thu, 10 Mar 2016 09:25:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id sf5si728164pac.1.2016.03.10.09.25.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:25:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id td3so45165278pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pFe65iwpJNb50UUmorEOFaKUdTXAvg34pqLm14YNXkg=;
        b=jBceDfKjeCRBVJ192G0TDtI7oK0oyVFIPu684RwW8IDFD0aTPdoQG47wcF/2zYuCWp
         7nzO2wcJATMrB5+9FKIQDewLd/C3v2pnW84MMrC3sYij3mNjjeNmSygoh54GwXU/p7Jz
         ROJzNB/EM9wxlRtnuMWurV0eFqop9vhfu+/Ovwn11UbpgoHE1TpAEr8M4eEMh5qHLVQO
         KbmORhv+xt2lOPQjhyLysoQ404zeFNjimbS4bQHt/+ii/I7USQJYYAfh3zeSfC+6cGHP
         tmeSRSoFsN414Lyp/equhDE+hvRnPewiqbzwK0pxRrLvEvQZ6OXOCy1mtJyWH1D8aC7v
         INoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pFe65iwpJNb50UUmorEOFaKUdTXAvg34pqLm14YNXkg=;
        b=cBzGF9t8okbsOm5SydKVm7Byj2xPJxu6cNKGLq9SeGcUYD1SYeOvvEYYjWVFPtj2qv
         c2hmxF4zI1kVK5kvIfWMq0URhI487z4FwnavPuggSK08PMCCo5ggRRjpOFew8yVOvq07
         mQGUrwRjkKFIDe00Yoy06lFJxlcxQB5xUZkLPtPX8v8mdguu8zfPuwU/y2myz3EPCpT3
         bz+7aEr8UG/FkynokTyi2Eb665/PIh0LRPneYgZe+pUf0sLDQk5S7k40RISoEh0d6ffg
         ClG+brBDtLKWeTTv/ibqDMySPcl24CKtZQYbiQY7FtMOtwni6upU4IKnUwpNZbGoVSCw
         /aWA==
X-Gm-Message-State: AD7BkJIySNWjdq6Gzl0m2TCPPp4ei/9xrtjwam9wuj2XkxWW+YY6Of+AeQ5Rlmf3Cb86SA==
X-Received: by 10.66.176.10 with SMTP id ce10mr6177242pac.68.1457630746208;
        Thu, 10 Mar 2016 09:25:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h85sm6921710pfj.52.2016.03.10.09.25.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:25:45 -0800 (PST)
Date: Thu, 10 Mar 2016 22:43:34 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: rtllib_crypt_tkip: Remove unnecessary
 else after return
Message-ID: <20160310171334.GA19432@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
index 2096d78..7df824b 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
@@ -369,8 +369,7 @@ static int rtllib_tkip_encrypt(struct sk_buff *skb, int hdr_len, void *priv)

 	if (!tcb_desc->bHwSec)
 		return ret;
-	else
-		return 0;
+	return 0;


 }
--
2.1.4


