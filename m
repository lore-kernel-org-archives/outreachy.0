X-GM-THRID: 6667559870599790592
X-Received: by 2002:a62:4747:: with SMTP id u68mr14881869pfa.45.1552412256261;
        Tue, 12 Mar 2019 10:37:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls11034932plb.2.gmail; Tue,
 12 Mar 2019 10:37:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwVyjYzCdLlz9yhrsSJ28no8L46iFraViekv9cnvCIvyxoVs/GrVY+ISiU4E2rv640DJXPJ
X-Received: by 2002:a17:902:1024:: with SMTP id b33mr12497685pla.73.1552412255494;
        Tue, 12 Mar 2019 10:37:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552412255; cv=none;
        d=google.com; s=arc-20160816;
        b=qy3QDXI5uxDWfL9v3rhKnSzpeI3O9vheSiDujodD1IUM+wR1cFUqPha6sRcevOPX+b
         r+az7IcYDyTFJCkkUtx76sXP+ygp4qhv7NOmuwnb+KczZEI6/zXvnw6oKR0H2c2qt+1A
         z59GR6S5gXDj7pfgh9il5TActkX3bL1kB5ifyX2/fJSnW9NXI8AYs8GZNT8cTxvihvqv
         LvK8kSb74rBMUD63oPQsq50I9Jfy9V2cMZDLaPREz2PxZntyAis61Wx0+34jfTYFcJkc
         P9t9NrLTvG9tFQa6HDzOZGgE+6HF20ypjHar3nE1g0U+UhfvQO1kDr/xTJvqynP1L79v
         7sWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=LXGY4E+i8t9SgIu38KpXy7kziOkXn4KfUCd26ouNIuM=;
        b=dsyyVZ1fPMKI4ZGIMJxtwU9w6IfVdjqE5qAJBw6lN5/WaOF0q7zPQtN+LNdJf3jR+Q
         H+aY6U7Apwaxc4SnlRpkks9i/yVqY+NSSfZ0IvoCL+Sjte5wCyNWFDN5asQ0/miOlc3T
         AM/9Tn+/m+aUhsACcjY0lniTS3/3NrDTKlKHv0YwzOXiTv3jC5bsP1czyGiSpENMUSrP
         N4wXx0G/IMNnefh0QXhWflCCqCJMnCNdRMyxRXWwOemX14oZ6ITNy5FBNQtbE1VyQe4e
         XJoqij0jNZUSIQKLx/tyQiyYGCLBcku6jNWYSBuFig1lBQZqvvbDqVJVd/bSm/SWps/Q
         8eWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jHAWNNic;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id j8si451074plk.3.2019.03.12.10.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 10:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jHAWNNic;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x230.google.com with SMTP id w66so2805568oia.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 10:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LXGY4E+i8t9SgIu38KpXy7kziOkXn4KfUCd26ouNIuM=;
        b=jHAWNNic1NftTQTF3NKehBPOxZLcEOmqnmMrH3YnPB9ioqixilBnapdqcoAZZIuHVW
         cLwKKalKOXEednlsv3MVboXuVT1YoM2QtRy4TZq97z9WRjmQpN7wAbDyUdHJ5o656QIt
         fZDVWqK1SKPhI7ZGUjmWBFxQT1rtGQhHEpnSBO9LKypR0ed7fQM7mCn09cbPvuAJ5Fka
         isybdxuvF9+9uzc1u8uUSMP1+3UjarXpz6ZqFZfcKVM3GQCmnhwETBdoolsdjSTu2mDm
         r78hPYOKpiqCxOqtefiqkLzDQvQaDIPgtIAN2R0vQY1X3J89BEy2EXm83jguIbnHCSLy
         6Gfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LXGY4E+i8t9SgIu38KpXy7kziOkXn4KfUCd26ouNIuM=;
        b=kIZKGmRj0sLw0Y4bZhcdSQb/PFR+5NzW+yU1rL8Mr9lgIBsVE05xn2mPFZjzVkngyS
         6cx3VoSPyH7Gxrl/XLeNtrSeFAUHWF969/CSOc1g/ka56yJ39o0T6XAKYsywUyIEOtVn
         5ouxVV4qfbAh7ajO+QFq/PwB9/45KNKLFj21y+4UjeNCDT4IZkSKUdA3aiwrbzouGjW3
         1coTyG+NfXBnfqN5sntNFdoXscfZ5KrnmKhMz73AwMI4V2SkmDl8RZvAjiU+T9o8URMh
         cyXobBVhxgsS/3Pv+nCuKDn+hgqUUr2ldPEfw3elLIcayhgs9isVz62pPV2KH3FoAR1L
         D/mQ==
X-Gm-Message-State: APjAAAVXSnuvFamTjVn9097Cb9fQj52pb/mdo+pC7Wbyr5iWs+PJ/cIz
	5bDO55OIh/nt0rxFZoP9KUg=
X-Received: by 2002:aca:c482:: with SMTP id u124mr2327725oif.95.1552412254859;
        Tue, 12 Mar 2019 10:37:34 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:9838:e357:690:7f06])
        by smtp.gmail.com with ESMTPSA id z3sm1191266otp.31.2019.03.12.10.37.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 10:37:34 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: speakup: Remove an unnecessary initialization in function
Date: Tue, 12 Mar 2019 12:37:30 -0500
Message-Id: <20190312173730.23281-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unnecessary initialization of local variable dt_stat in function.
Issue suggested by Coccinelle using ret.cocci.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/speakup/speakup_decpc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 459ee0c0bd57..3ad49bb93829 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -233,9 +233,8 @@ static struct spk_synth synth_dec_pc = {
 
 static int dt_getstatus(void)
 {
-	dt_stat = inb_p(speakup_info.port_tts) |
-		 (inb_p(speakup_info.port_tts + 1) << 8);
-	return dt_stat;
+	return inb_p(speakup_info.port_tts) |
+	       (inb_p(speakup_info.port_tts + 1) << 8);
 }
 
 static void dt_sendcmd(u_int cmd)
-- 
2.17.1


