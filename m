X-GM-THRID: 6670962205822812160
X-Received: by 2002:a02:1185:: with SMTP id 127mr9236391jaf.136.1553291973279;
        Fri, 22 Mar 2019 14:59:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3553:: with SMTP id k80ls353720ita.4.gmail; Fri, 22 Mar
 2019 14:59:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyEflNblZz3VdrnxF9/2LgPW0Hdytx0rxeOOKZcZgtBroro/6cDEyXfGARe990aK8RY9bTC
X-Received: by 2002:a24:ac5d:: with SMTP id m29mr31256iti.139.1553291972189;
        Fri, 22 Mar 2019 14:59:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553291972; cv=none;
        d=google.com; s=arc-20160816;
        b=JmS3P/zxZr9Y2qhRmXh5BvAUtF3+5cEgW+JJsp5PmCvKfm40Cj82w3tldPxtSlg7UR
         Xe0LdfAL/4/3YuV2YVhwOaP8kjgoxPCMFlvCHPdVbyaG09hjkPX0Y/0HYpGFUsNbajHj
         byRhsj4487M/7z/EBA+dRxC8RRYj6NAoZoixcBWLMlSy64Kqu7taJ4fvCgeQ0wEj3bb7
         jVyruwbcQ84ig+Kd/sX5fvUUEG93oVSdqLg/AkRdwLx/OrTAMmCeUtefWb1S5FCzc+Gl
         yvIy7HH4TAtHeOwQwBc85IH0/4dVaBP+lwvIBy+6LfNjOUM74+IGL+Xs2+bqdkLqbtr7
         N+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Rp0fIjswtA4Xz6C1KRGJFPLmoWr1WUq4T+bnc6INqys=;
        b=enXx1Jg0tywOx4ggFHvNE0b0+E5dWDKU33w5L/rBFh/4G9SlUegUd5XGyUnheb0pB/
         /Xztf2VJK3ZtPGmJ11jNeMX1BKwqD4xcxtpNaV+NXCYFRdqSFQnFXvaG4GyzTUoRj7vk
         O12CA1LFUvSGsRA3I6Lux2yu8W4/g3bm5WDlxy+s9uUTIt5DfCjIDLUYoCDtNBRLumI4
         VKcYyeITyIcPem6Jq0CKwmjbRUEonmZd0TepVbWltp+dAqrTOm5C4mi2XfKAuAxWfMuf
         6IXW9FMqoP30C2sYyTWRdeOw6irfHBtnenEDXcEhNOnJESSyK7Xd7FQtzU45QmoQR+Eu
         ZBcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D8K2hi+/";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l23si473260ioc.2.2019.03.22.14.59.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 14:59:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D8K2hi+/";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j26so385529pgl.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 14:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Rp0fIjswtA4Xz6C1KRGJFPLmoWr1WUq4T+bnc6INqys=;
        b=D8K2hi+/wEgUy2FylOA2XC48VVus9PpJ9e05lfjjszrpHCXCI6cbdhkPVXVtCjDOOa
         sgGgJn9H+Yafw47+fs9mR3Z3pHkTSw7FQZwRImLsXBYVE+leU+LG1a9vAhp7A+rh+RS4
         3utdNcy/5/lS/rQA7irIeA9KUWvZTasTQN/0sDAu5Loyxn9RF6Ge4dmqx8aLHx7MD1Qx
         PmsFduGAfYANd0JWHGD2KW+0UFdOHksVyn+uNwftdcbird6H0ohPGDYYvRg2xGlJ3nEa
         6ana798oZ5iu9OyUQPUfD8Na+aRnunyMqtGzKq6wRIqOuwRMCM2XgPqi32ya94ohtv1j
         y4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Rp0fIjswtA4Xz6C1KRGJFPLmoWr1WUq4T+bnc6INqys=;
        b=Fwro4ACAvLDps7h9hJgXIU0SpECgbBhtNCD6ATdV92PHn2H5Tgesr+JA+emeDY/A8v
         3qzkbv2clC8ebdIs+cWL6Wr33lXsOCnzpBJreKnLoHOO3OAYDBE4JK3a1mmWg38WLTda
         WO2/WO4JalVAAfnTAtGeJQrBJRwV1gGN9fpNh1cDh07GwGP1m1KeLtlmY3/cS+cgGJ23
         0GKUeimPKPutUyMTypaDAeflLAXmKPcgaFg0fyL+URdHPsos3fvJ9//oojI4kBmi2IqZ
         IzzVZ2jsurwnNNl7iizpMootOSy4P69t7Hi65DNPWPovlgvwRjI5NvMP8WvASyOxmuGR
         VKVg==
X-Gm-Message-State: APjAAAV/6WY9z4bGFyOt2QE0qiHKfHQUSkQja+fN8ejg+D6PPJyhmnfj
	Ov48HqBY82Fh0PYdMUSVLvM5WgLje0o=
X-Received: by 2002:a65:50c4:: with SMTP id s4mr10989953pgp.33.1553291971412;
        Fri, 22 Mar 2019 14:59:31 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.101])
        by smtp.gmail.com with ESMTPSA id d5sm9397024pgv.20.2019.03.22.14.59.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 14:59:30 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v2 2/3] staging: vt6655: Add spaces around operator
Date: Sat, 23 Mar 2019 03:29:14 +0530
Message-Id: <20190322215914.26579-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Add spaces around '-' operator to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v2:
 -added the spaces after alignment of lines that are over 80 character

 drivers/staging/vt6655/rf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index d0581b2ff72c..97b90bbf5770 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -704,11 +704,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL2230ChannelTable0[uChannel-1]);
+				dwAL2230ChannelTable0[uChannel - 1]);
 		ii++;
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL2230ChannelTable1[uChannel-1]);
+				dwAL2230ChannelTable1[uChannel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -729,15 +729,15 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL7230ChannelTable0[uChannel-1]);
+				dwAL7230ChannelTable0[uChannel - 1]);
 		ii++;
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL7230ChannelTable1[uChannel-1]);
+				dwAL7230ChannelTable1[uChannel - 1]);
 		ii++;
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL7230ChannelTable2[uChannel-1]);
+				dwAL7230ChannelTable2[uChannel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.17.1


