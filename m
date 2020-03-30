X-GM-THRID: 6807150938444267520
X-Received: by 2002:a25:cace:: with SMTP id a197mr23901984ybg.19.1585610464818;
        Mon, 30 Mar 2020 16:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls6503390ybi.2.gmail; Mon, 30 Mar
 2020 16:21:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvI8iOXaHnDgv8yKko2k+NaEwvaXcGw+jiHjBYOSh/j2g/5JC4nOldCVoYMVHCGmAcgIu5P
X-Received: by 2002:a25:77cc:: with SMTP id s195mr26362871ybc.93.1585610463442;
        Mon, 30 Mar 2020 16:21:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585610463; cv=none;
        d=google.com; s=arc-20160816;
        b=AcyyL5fSsfKEgCqkb6mHBzwHJQl3OKXfRyIgOX4dKMTn1hP/9k7nLZFvPjqA1cgycO
         Ai0z6xkNGSvMc8heUlezdb3w1qICtxc1mnE9b4YVcCbJwG+5RDtV2fptXxIv+q4sgnOY
         QWeUrwuoUAdg9rA1l67ye/DdmGs4MCjaTM4XILuRN7xJ5/5XxeyrPU+S0wpuYtFB5JOE
         tS+d2eAOwI9Pmc9625+orQCpzHnT1b2rKswtysYBJ3S1B9s75oUFGu5S22DbR9jWZKHc
         qcLe/i7hXwuVQCgm783ewVFjgWC16RtdaM8j6COOj1Ofx6py/YJN+E3uWLqNS3PkJZN/
         671A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=d7O/Y1UZRl9rjdivv3qavnHXyyAe8PaJzLYevt3jOgQ=;
        b=ua3m+5ZQ9kLnWX11k1qsQ7ckSfa8qaRDJPHZtqgErvBbuwzb8WhXljpcc5RDg2Kcbz
         aJGy8JPwiVvOfzG85uJDQarnPglLqPGz5gdqJ3zsvb1Bzw05arMilc9FKksKdcAb1Aqd
         dHSZPTiUoga0l5cSt8KvsG9hJDB2mndkPYbX5nSGy0N/gjXCrqt0NddLuxLax3fNZ+tf
         bVoGMu5uYgDLuT3cUDRrYS16MY+TKDQwmJKKoiofDqIg+hXtEIDSNJ0GFguezQYs22nR
         u+eLeWU1lC60MQmfpyayPxkAqEnOp9oLoLxAJ+pf2Lv0kIwyFoQ83FuspiSkUxQ4Zro8
         ztRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="h8u/jhQu";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id y140si651425ybe.1.2020.03.30.16.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 16:21:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="h8u/jhQu";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id v13so286211pjb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 16:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=d7O/Y1UZRl9rjdivv3qavnHXyyAe8PaJzLYevt3jOgQ=;
        b=h8u/jhQufAmXUA5I6XKku2glveFk7ysky/HvcEneNmipgbBkgN+fFLo8ktl2kXPoFB
         Dux2rO/eKo79YQ4zXQHZMu9aXHcrtl4D46aOl3I0G3JCjPtcK82K3UL41u0XYNRoXGJx
         J8nGtKjmUGFMEiqFZo7LpdtoSG7mM0O/fJXjlrxKaCoK7tyT8NuONd48HhaAB/pHMoe5
         Wqa5QdU4FbCPZXjWd6SpSeXw7WZ8lFNuHM6QrzDkRJo/Q6U80SKxJ2gP/te7mNJHNKB2
         Fs4UDnx+/3EZu+EfX5+zh+fyY5KI1LVmYdCZQp8W5woLcDMRB5adQp2l0WaersrdbRuq
         GpWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=d7O/Y1UZRl9rjdivv3qavnHXyyAe8PaJzLYevt3jOgQ=;
        b=Q6bj2hnGfyV5KJYBqDqVY1vEfQLudS0fHK5h9PMPmTWoPC+a1u2CT8+3WkrrfEbk/A
         ZTYU+Wwu1iMzjosP3R8FxJgRTxK17pi758ZvHJNusDRujvOJlHB+US20fVx40i9v260w
         Bs41CXnQrsU+9G2N8+iqc4CID9awaYH+9C3P1hpz9ZTIvAQv4kmu4DcW166Brw+oAyYb
         xk+qkV29oRZsW+DK6brMD5BJf0NyRhn1qphH9OGlm17rRnC1RoHRTKTiTBzubyd5VZbk
         5gRXtuTtGLTfKIMBNQDlyYeXxERkSORnCvUs7YciP87sT6TIA+hx3W1fOqZrMefqoG7S
         cGWw==
X-Gm-Message-State: AGi0Pua0B0mZq5ahipT3VRLHT7BExMo36HUuSt3ywhbMqSOwqQvGG3xR
	C0A0zoRYvaQveBkBivIWqn0ahqC1
X-Received: by 2002:a17:90a:9408:: with SMTP id r8mr555372pjo.15.1585610462469;
        Mon, 30 Mar 2020 16:21:02 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.99])
        by smtp.gmail.com with ESMTPSA id x4sm9874334pga.54.2020.03.30.16.21.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Mar 2020 16:21:02 -0700 (PDT)
Date: Tue, 31 Mar 2020 04:50:57 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org
Subject: [PATCH v2] media: staging/intel-ipu3: Simplify single goto jump
Message-ID: <20200330232053.GA7335@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

On successful node setup, the code jumps to a cleanup label to perform
nodes cleanup. This only call to cleanup using goto label can be
included in the for / if blocks to make it look more associated.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
---

Changes since v1:
	- Corrected /reduced scope of variable r. Warning generated by Sakari's Kbuild bot.
	  Change advised by Sakari Ailus.
	- Patch was earlier reviewed by Stefano. The bot warning came in
	  later.

 drivers/staging/media/ipu3/ipu3-v4l2.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index e8f33539a217..beec8aad2d43 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -1291,19 +1291,17 @@ static void imgu_v4l2_nodes_cleanup_pipe(struct imgu_device *imgu,
 
 static int imgu_v4l2_nodes_setup_pipe(struct imgu_device *imgu, int pipe)
 {
-	int i, r;
+	int i;
 
 	for (i = 0; i < IMGU_NODE_NUM; i++) {
-		r = imgu_v4l2_node_setup(imgu, pipe, i);
-		if (r)
-			goto cleanup;
-	}
+		int r = imgu_v4l2_node_setup(imgu, pipe, i);
 
+		if (r) {
+			imgu_v4l2_nodes_cleanup_pipe(imgu, pipe, i);
+			return r;
+		}
+	}
 	return 0;
-
-cleanup:
-	imgu_v4l2_nodes_cleanup_pipe(imgu, pipe, i);
-	return r;
 }
 
 static void imgu_v4l2_subdev_cleanup(struct imgu_device *imgu, unsigned int i)
-- 
2.17.1


