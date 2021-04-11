X-GM-THRID: 6950041499931246592
X-Received: by 2002:a37:5b84:: with SMTP id p126mr24883300qkb.142.1618182635132;
        Sun, 11 Apr 2021 16:10:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4e82:: with SMTP id 2ls6244731qtp.2.gmail; Sun, 11 Apr
 2021 16:10:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJXNDR/SidDEBDYqKBbJfJb+v3hc6wdfDNlgilx0xqiFA4aGCbMXKFkAQl6sdwrbVBAyMU
X-Received: by 2002:ac8:5803:: with SMTP id g3mr22919921qtg.17.1618182634443;
        Sun, 11 Apr 2021 16:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618182634; cv=none;
        d=google.com; s=arc-20160816;
        b=Dxej6hn/GIuRmcQo4VCGX9bOMp1YA9R3aIy3xaOxzXMxgPTO7TPYjbQLk/sSnbypqw
         Lo0p7Uab4OiN/k98SHjr4OdGVwb6tvLA9p6opYgLM4uWiNYb77PZxUNfmBFp1vB29Vx8
         XmCly4mlcDreQOU1hVG2Qhj2tQgbjLVHqheNyevRrnpSZgJ+eELajXQBL8p7jZY2NSDM
         xe8P2TXylhxVhE3k40Hw743BE5jmZ0ceHP1iyVibtjAFZCn2M0FwO2+H43lf2PTdKA2g
         5L90tduJUhccybX+oloUBfhJ5F9JtTXarzTTgLiqxmU3xGKtVSXTktAgW+0Hf/AVyNHR
         4Y9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xs83SoRxjxMZm2G5yOIIqfQY+EA3Ry1y9P9uXPT9iCU=;
        b=BnUoGlRO0pMX//YQtb1DT+lcf2DeW6oNA5LhYyn74beK6+LQYXPeoZ7A6y8BycfmHw
         9gF0WmJczoKavXLAOarZiS1b+lZXtsm1kXlFeM5MHrLJfILSfT7NrFoJuwb1sRjRj3Bo
         uZaO1XCUs8Cab5nG/Ux5UI5SH41wDhlnRh7URlV/+2vGR3Ss8p7LogeX3BrUlBUU9pbE
         JsSbwyzgn6LM34lJ465yqP1fLq6wnv0Xlo/Sm/rrRLgbJpp2Y0olZ4Q3ugIzPITgSdOP
         qbacf/Jxg14cubn/QnNH8MfyBisYMQ+rPAO3aj3juZAQxlBw1k3nJU2vHNr9uOhb6z1V
         mddw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1uoqAlA;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id g22si487211qtx.4.2021.04.11.16.10.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 16:10:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1uoqAlA;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x629.google.com with SMTP id t22so5045081ply.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 16:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Xs83SoRxjxMZm2G5yOIIqfQY+EA3Ry1y9P9uXPT9iCU=;
        b=Z1uoqAlAInnYANBvRJ7X4808QkpHyM0B5anJf58ZmtqH6aoWhE8zuRtTQDQ+q4vmXh
         0hAst2YxF5Iueydg+08EqNS+zpqcrzDXB/K1G7tZtJ2jOCIxf0k2XnvWVOmDz0dWnOlJ
         bUH/65y9LAIoYurGny56wvzmM0ZQ5OHvtB9EJz9vH9F3qh7veZBU/jIQVsFrjtKA2neI
         jnW6c7cnsuwvrueopXHC6ybIGEVPlUMuJt0E3dINR0PVEO3Zarz9xu6/j+oFq4MWK34z
         +itQEYhFKDOYJ6EfhKC4ijSM/9avhE3ZUFtAERvdRQ2xLyEjqJu9W1mxuHt/fMS7LN0P
         Kr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Xs83SoRxjxMZm2G5yOIIqfQY+EA3Ry1y9P9uXPT9iCU=;
        b=hLcT+8AuQ0ghLLJsq4p1bNBSKcj+T71U08fhj80oJuMMk11FhEiE0sZ+s46FqNVizm
         4Io6Os1OtTZQaOEkHRFJPE6veXWFv7mEaB5sGgTSfi8RIpdNaFoCaypvUmVP4KSsgRzv
         R8XVIOgVtDssabPFjJ9cmoeuFe6GjyH7Rb8JamGFVlP/Kw9ISInkJx0CB4JTNT7O/8RW
         9Ny5IC+xdWyXDtsjP0mg9NorVIQ+KtPikMIgORDLA6qBAoILZmdmFASPPs7ilX149AqJ
         Pf1RlC4NxKYeJgZhsUUKKzBpWZSC23cLokyzvTCl1EezhnBN5OO1HusRUqFA8UX8vm4L
         nm/Q==
X-Gm-Message-State: AOAM533m7oJy8qTF8Q1mkmt3Z8ScdLABLW5DBktYJQmEVF4Z/h9GAUaS
	LbpvV25tyNfflfu9+s/u00s=
X-Received: by 2002:a17:90a:d3c8:: with SMTP id d8mr25032069pjw.144.1618182634040;
        Sun, 11 Apr 2021 16:10:34 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id 92sm8713357pjz.7.2021.04.11.16.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 16:10:33 -0700 (PDT)
Date: Mon, 12 Apr 2021 04:40:25 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 6/6] staging: media: intel-ipu3: remove space before tabs
Message-ID: <a01ff63a3b2fb14704f32e83bd12c4cf36410275.1618180660.git.mitaliborkar810@gmail.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618180659.git.mitaliborkar810@gmail.com>

Removed unnecessary space before tabs to adhere to  linux kernel coding
style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index 0451f8b7ba4f..340d97160bbb 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -631,7 +631,7 @@ struct ipu3_uapi_bnr_static_config_wb_gains_thr_config {
  * @cg:	Gain coefficient for threshold calculation, [0, 31], default 8.
  * @ci:	Intensity coefficient for threshold calculation. range [0, 0x1f]
  *	default 6.
- * 	format: u3.2 (3 most significant bits represent whole number,
+ *	format: u3.2 (3 most significant bits represent whole number,
  *	2 least significant bits represent the fractional part
  *	with each count representing 0.25)
  *	e.g. 6 in binary format is 00110, that translates to 1.5
-- 
2.30.2


