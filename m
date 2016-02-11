X-GM-THRID: 6250067479758897152
X-Received: by 10.50.13.69 with SMTP id f5mr15567549igc.7.1455207234771;
        Thu, 11 Feb 2016 08:13:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.184 with SMTP id w53ls1112727qge.32.gmail; Thu, 11 Feb
 2016 08:13:54 -0800 (PST)
X-Received: by 10.129.84.6 with SMTP id i6mr43763107ywb.6.1455207234052;
        Thu, 11 Feb 2016 08:13:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id q187si676530ywf.4.2016.02.11.08.13.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:13:54 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id y9so41541574qgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 08:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=G3Kh8pvmCqbd1Wk3k+xUSBBkfMiasEz1kF/DItrxCJQ=;
        b=FNF1G/Wz02pXH2edpQ86q/K8CYsRIxHgNsJD7GIxMYDp4SP6SNuPf1Fjy2UC9YWIxe
         Ge8QV8zn4uG8fm2rY8eWYE8S5VRp9x2C59Cdm9D+BGnvjw+jTn0CzoYQOCglsp7+nSau
         vdQZQVAb2OTa4g4XebM5Osq0ZX7I7XNPZGKK+xcA2PsohAyR8fiBES0qtXqIwqvR5VqI
         31beufBp6i70As2q10BtUKwT4ol1SPD9aqpZ+DN92EkSxyKS2u439w96FNkb/EXES1Cj
         WWLQyQr7YFwWYZ3TNQXzlJfrMMT+LVKhfeoe5fAR99Rrs0TZH5lW+9RPbc1Z3pN1bciu
         KeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=G3Kh8pvmCqbd1Wk3k+xUSBBkfMiasEz1kF/DItrxCJQ=;
        b=iTO2QLMf1f+YTfz5dmqhBq1IBYp/Ck4gfJiw6GctlukIkwd+KgQgsQZ3CHGmwTQyDB
         e9IJnaNApFeC2Sgj8ErDaaox/1I4LnAsDJfqbYRtZ6iFbai0V+2mOcekHy9VmnpGJxt0
         xICmLCNs0KEqp1FSSZN7pfLi4FOffVl6lVGoW3ES/pqRu1PgbEhxgS+/U32LuHiamXr2
         RLffdvF3mvDBUvCG/WBL0jA4GeS2817Tky5b4VYDF4vKKJYPEA6DcWDVbk15oxNhnfmp
         0pGHQBhIbpWSmgJf8WQ6juQIFr66Xv04ecpAXzlUaX6BsOn6Uku0RXoLN0u1z+9bnDli
         nfnw==
X-Gm-Message-State: AG10YORCoxqKVSRBu0dTRFutBr3zODWUoiI9DKkBq6oAJi0G3eXPHpWCS6TVxI4W3YLKFg==
X-Received: by 10.140.31.225 with SMTP id f88mr37402415qgf.52.1455207233893;
        Thu, 11 Feb 2016 08:13:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id o60sm3602939qge.34.2016.02.11.08.13.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:13:53 -0800 (PST)
Date: Thu, 11 Feb 2016 16:13:14 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: unisys: Remove unneeded parentheses on the right
 hand side of assignment
Message-ID: <20160211211314.GA4118@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around the right hand side of assignments as they are
not needed. Semantic patch used:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a = 
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/unisys/visorinput/visorinput.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorinput/visorinput.c b/drivers/staging/unisys/visorinput/visorinput.c
index 38d4d5b..b85dc21 100644
--- a/drivers/staging/unisys/visorinput/visorinput.c
+++ b/drivers/staging/unisys/visorinput/visorinput.c
@@ -468,7 +468,7 @@ handle_locking_key(struct input_dev *visorinput_dev,
 		break;
 	}
 	if (led >= 0) {
-		int old_state = (test_bit(led, visorinput_dev->led) != 0);
+		int old_state = test_bit(led, visorinput_dev->led) != 0;
 
 		if (old_state != desired_state) {
 			input_report_key(visorinput_dev, keycode, 1);
-- 
2.5.0


