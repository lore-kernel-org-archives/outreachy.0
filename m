X-GM-THRID: 6336577206052978688
X-Received: by 10.31.94.21 with SMTP id s21mr3662756vkb.27.1475349429786;
        Sat, 01 Oct 2016 12:17:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls1719243ote.32.gmail; Sat, 01 Oct
 2016 12:17:09 -0700 (PDT)
X-Received: by 10.157.8.202 with SMTP id 68mr3539456otf.11.1475349429365;
        Sat, 01 Oct 2016 12:17:09 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 128si447444pfz.2.2016.10.01.12.17.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 12:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t25so1113408pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 12:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zmeig2HeBPjjd53ir8pIxNxtTrTjTdYIKb+wwUHf538=;
        b=IBTlH6djebdtNRFEasjFHDm0oa63W9ZHJVJZpx2Tt5qa8oxgBKPtq49CVvIg1dqYyZ
         mv+bUytWtXZayZRNkDdpE+J6FrUqxmV54mwijIXKzWXRbuWgX0jhMq+E1K3ZPGr/CGoC
         EkX8eyySQjtOBUYWBxvHC68TyWqrrFUpzugCYKpuZuaP6C1qOkBvFC3ITNQNqVsstCwy
         tA4BGUfmXH/zNF8AgRiQ3yFVdcP2u3fRXryKL556n8wjg6JQ2LmUqf1dxzm0/p5fRqJY
         FzZBbAzLbwTnkxfxpTy1vLSw1QEroEQocsEYL2TZ5u0oYKlnH/Wkw3POxvjSjLsxuGV/
         ClYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zmeig2HeBPjjd53ir8pIxNxtTrTjTdYIKb+wwUHf538=;
        b=VLN1KjzkfeYt1DaoAhvXCCWBr8pUyq2rpikF7e+gaG8u+5ZjIBFjI/UaMgIzDtbsIG
         rFBYBO3Q8brO9VQceD/0AwiPiecfAI3LufuZYuxnK9+z3qQQIDCkCCJNpKNaABKjZnMI
         YVfCIpDC0dlxnIb09jHVmS2iuA6nO9+vyN/Ds24yjQUgfApwnn4fNxhTTNtFbOtiGOud
         N/M2xTOI4KDy9ug86SG9Za9T/IpN9/14Taq+k13+ehwJKBrCCG+oMklOd6yhSKw+sIjW
         DxIdmMPgKItU867aWcb+owPxJbwkrYhhmn+vL2lxfDnV/cAQtgyXrk+DMBqDkSvN83pa
         Eacw==
X-Gm-Message-State: AA6/9RlBLaHIGQUQCjwUigPJKOnXOJty7S3QRpGj3zzCw7Bc7p/k8hLCYjMyhn9Mb3IpJA==
X-Received: by 10.98.112.197 with SMTP id l188mr22552376pfc.151.1475349429176;
        Sat, 01 Oct 2016 12:17:09 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.189.15])
        by smtp.gmail.com with ESMTPSA id w186sm36584309pfb.84.2016.10.01.12.16.58
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 12:17:08 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 02 Oct 2016 00:46:53 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	joe@perches.com,
	apw@canonical.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 5/5] Staging: iio: ad7150: constify attribute_group structures
Date: Sun,  2 Oct 2016 00:45:15 +0530
Message-Id: <1475349315-6155-6-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1475349315-6155-1-git-send-email-bhumirks@gmail.com>
References: <1475349315-6155-1-git-send-email-bhumirks@gmail.com>

Check for attribute_group structures that are only stored in the
event_attrs filed of iio_info structure. As the event_attrs field
of iio_info structures is constant, so these attribute_group
structures can also be declared constant.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct attribute_group i@p = {...};

@ok1@
identifier r1.i;
position p;
struct iio_info x;
@@
x.event_attrs=&i@p;

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct attribute_group i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct attribute_group i;

File size before:
   text	   data	    bss	    dec	    hex	filename
   3561	   1152	      8	   4721	   1271	drivers/staging/iio/cdc/ad7150.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   3625	   1088	      8	   4721	   1271	drivers/staging/iio/cdc/ad7150.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 5578a07..6998c3d 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -562,7 +562,7 @@ static struct attribute *ad7150_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group ad7150_event_attribute_group = {
+static const struct attribute_group ad7150_event_attribute_group = {
 	.attrs = ad7150_event_attributes,
 	.name = "events",
 };
-- 
1.9.1


