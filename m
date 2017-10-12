X-GM-THRID: 6473410411176656896
X-Received: by 10.99.123.26 with SMTP id w26mr325624pgc.58.1507782714682;
        Wed, 11 Oct 2017 21:31:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.132.103 with SMTP id 94ls872825ple.9.gmail; Wed, 11 Oct
 2017 21:31:54 -0700 (PDT)
X-Received: by 10.98.73.204 with SMTP id r73mr309070pfi.23.1507782714114;
        Wed, 11 Oct 2017 21:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782714; cv=none;
        d=google.com; s=arc-20160816;
        b=Fe2HurLEznV7FKX5V38w6+1sy02bIH3J/WB4ou0c/OVXVgBRMi+g1ablHEbUZbAkyM
         jLGvkV5aDNNfrIzbuyVgjIiZ8DsiQWwOSmGdOBgFvHzKoca7U4a0yb6ihKPcJ5W+CK09
         K7LXLww6gcWfTX8qvHr/ICBEJh/of9YIkUjX6vAnAYGf+Q3CcHFQ5lfdJAvWn8s59zVg
         jFCvCLPABoFhugTfFuLIHJOigDS4GSd1pJpC4xysYdwHZ0dbrvonu0GzI1Br6Yr7qzHn
         CvCMfc4VY//H6L1ghQULKdYtk/Y2G+Ixb8Fx4Ps8NZm5lg/wCfK2yJYnDJ2CCiskzRrz
         vy8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=OZJiGT5nN1AhunFIqp46fnz3RGXFgxD7EjoIxnUTBG3uGSI8wt+vZbv3o61bdGH1X5
         qugr/1oGS9WXcGinz1QfPjhTcbqMGT+buMioBYdOcyeAAHCw9mEdGd+pX/uCjWNIM10f
         D0fJw/CIIfgTS98W9SdHRYWETVNIaRD/M4mj9u/NvL+4EjiJwooMZD0ohopSM9lLJwm7
         V09RgWZ5/EZeDD3cvMYURe2QEB47okUI9HDOyurc4Z0s4FrsJW5oXby0bWILpBR7vgJj
         S0JPEUA3cy7cr4+XGCcdEYNuIDfLF/o8/3WDyZUO87V0pYV/I9AiQ+6A3wZ8s53duGff
         I+aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KXMFKK34;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id i72si10733pfe.0.2017.10.11.21.31.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KXMFKK34;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z11so4440029pfk.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=KXMFKK34NEGTZKaWPTMV62AjJ/eCmR4FYfwhD1j2mogZvskIxEJSyhfsUnmrFkVv2Z
         4nZuKjjYe1461pMdfh1tXkA2vFX9GL3gM36snG77hZH4SBvfGv+ve8AyoIUjOcsyxwC7
         i1p6eN5EiKWToI7003rXqBhzkryHBUBHOP8GyS86EbGDmSx76yGwBI+rq4UuqBEyj1GP
         nFm+GPyM9fq6RbMA3qa+laoHw5elx5OrN0ZJRTCxSc3QoQ8dXWfPFx8zMXCjnwc2Z7iI
         4sYZSC0P532qLkSzJnUr9AMo+6fkmKN4cSxhSc1jJlTPHbB9XR1BOldhwYm5mX7PoAAq
         ExBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=EfS66Wsv8F7N8DgDsFgiX0R6jaFFmZaYzSFqCKO77Dr9TQWE31PlHg7a1MBKfXeI6s
         HeceFnL6SehHPiRBS+StNDJ8mA/BkKhyzqyLpMnRYSfnenuvld6xAV2gC31zJedegIRo
         uxZhTqfHypFjBtLbYqrnC9aJEFV7PQze39bqilCw638uawolaKNZNdlrPLx43MRjj/Qr
         QxvbHLYyDfu5PmxAkZg8C2TGIPjAYpndz1vDnKYprxUuuYBz7dvC9hsJ15yNG7SP7ma3
         vuW9cn+0tuQaE0GApv4yoUJoenoJi8xpBLrxVN4S8X66Cv53QjOZtUaAC4VxUHVNZWzO
         tSkA==
X-Gm-Message-State: AMCzsaUMkPlS3VEDICsmUQDkgA2ZpME61nozdf2th3v9Hd91qGkR4gTd
	wj5NtOshbYpu+vADR3WDH97sK7Lx
X-Google-Smtp-Source: AOwi7QChZRnUW6LvenzbAx3PUaxiGIrZWQ6kN27pC6+DJhmJB/2FiYNkUoS3ZCXkG0FpK7QwT6W4OQ==
X-Received: by 10.99.98.6 with SMTP id w6mr1050459pgb.189.1507782713828;
        Wed, 11 Oct 2017 21:31:53 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id l28sm19564620pgu.38.2017.10.11.21.31.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:31:53 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 04/10] staging: lustre: drop macro that has no uses
Date: Thu, 12 Oct 2017 10:01:17 +0530
Message-Id: <1507782683-12754-5-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

This patch removes DLUBUF and PLUBUF macro, both of which have no users.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index c8d5e0b..d5ecd58 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1305,8 +1305,6 @@ struct lu_buf {
 	size_t	lb_len;
 };
 
-#define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


