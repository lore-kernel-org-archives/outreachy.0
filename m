X-GM-THRID: 6470000031137005568
X-Received: by 10.176.16.221 with SMTP id x29mr7643899uab.27.1506439984821;
        Tue, 26 Sep 2017 08:33:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.161.207 with SMTP id k198ls4911921qke.13.gmail; Tue, 26 Sep
 2017 08:33:04 -0700 (PDT)
X-Received: by 10.55.167.142 with SMTP id q136mr5626248qke.34.1506439984298;
        Tue, 26 Sep 2017 08:33:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506439984; cv=none;
        d=google.com; s=arc-20160816;
        b=whDiUXBpNB7sSUWqpmdMTzxGrWghAyI0VBMbbaoYmNO2+ct3AX79Sp197bN8S/plXB
         5auSxAf67VtaEO8g5QUvjxoCXdFHO8M8OsLgwBr894pwuPg97Dy9FMQVq5ZxbODhU959
         A8L3aUkkxK3cN0KGqlsKIOzP2xTwNd3dLatKOFJPw6xDwQd5OcLnBcLBTZNnxaZGm8Ri
         OlO6y8A0xkb7raNXK8fW9oNPqSx8VWmnZrS9sfH66gIwTFVqzbkI/+u3fn2gZ5quC671
         w7R7KmOZ7UfiM8E7ix68FgX7Dw6lJpKe/0uVAEMDb3J9JULzG63PJXPwSwZweV3Q2z1c
         PO2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=G+vCJZ9BUPV0upA4JvLe5UhMm3T0ANsu8GsBxcPUEtg=;
        b=cFm+pEV0ttTp01eLvpuHfFqk3u2y/F6wm+mUOVDsjMGjt/hMiaWINPkHHzjH0JAB00
         sgEJcLj8qkVxpJqM/c5YdC5Jr8gBBRv33NQ7le1x4fqF3LstcX69YsKGCazBEYB7WBfb
         Uoxw6ohXjFP5/YX7b4BLI8yY+pQRrST0geptUS14MFskE/Czd+FXGzcL1QblrQJeUX7h
         3fdboUv1st6Nm2dRRKyJgqUrj+Pd7yejMb+DarPo+t3WER0ORCHIc4XsYFEzJP3BOtrK
         D2l0I9uF2tigO0Phl/UjH+pGzcolOceUqnusOMTEr5oomRqhw660dtsnYX0gE75Ror+r
         mGMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpSha/xf;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y12si752400pfe.23.2017.09.26.08.33.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpSha/xf;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u18so6978694pgo.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 08:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=G+vCJZ9BUPV0upA4JvLe5UhMm3T0ANsu8GsBxcPUEtg=;
        b=rpSha/xfnmO/u5XjZX95O590i9JP+c9XxBKXX/aQvcqkp3eFR+P0LEAUh6r1Q3rWn1
         y8zwPcMWuqFOXEhONTUT6XxDuwUJEbGZAR7A47XJSRWkYHgjG3HslPoZugifA2XN7uZA
         fz94A+6jlvMGxwn8/gViOD23PfPhbRkCfg+Y5fPVNATjH1DzB8Fs+pKBFcEfyAdhUUrV
         FmqVnVHugLLlxBl+A+w1u1Jnk8M/Uo0cdis6kM0Mb9pQoZaQNNOLKfgqbUyAisNAg20G
         ioWjmCG2seuODvzIdPQrbEyy2o5nqFDpTPFTthhy+GuSOeQvnQtGZOFRYzqbKwn3dzpd
         AykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=G+vCJZ9BUPV0upA4JvLe5UhMm3T0ANsu8GsBxcPUEtg=;
        b=a40HjOyRi2Wgi3VRuEpkyH59b++xR5JVuMa7Lc0oZucx8Pku62OK59mM+g1U8o0gdp
         QQMiRsk4DsRDBFKppK06C2WgGNj/eUuEQbJqOwVBm2i1CPGoXm6JGLQo9eZrhD3sl2oz
         bRrdK1mKr/DqKaZ9LEm7PE7vYL9Hi2MHNk2ieSS6irUL8tXXMtSCI1BWFiOVLkWu5qiN
         wVr+47/J2ZY2g/k7qPk1ebqinm00JHJrt9xwPWcDSiHEnTTbTQaxx1E5Z+I/+MCSI+Pc
         /sb3NWrkAHPMypeWABcLZMDxtz9G0gQ2CrPLIk0CvSdHt2gJ7cCgY/F56wYxuE+EVaSc
         1YAA==
X-Gm-Message-State: AHPjjUgN057Na9CMEm4DKsqNMP79w+qrEE15I7PLtvKk5lgMia5x5d5o
	Q1vRAhL7G6rK+w4wTszX5DQ=
X-Google-Smtp-Source: AOwi7QBI1KHXMM4oIm0I1oTYpN2zVXUOSe7UXvaXPgtFZWIiUBQT/CfFaAr2uGx6XpokAelXZvtD/w==
X-Received: by 10.84.232.8 with SMTP id h8mr11189123plk.423.1506439984021;
        Tue, 26 Sep 2017 08:33:04 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id k82sm17206932pfj.66.2017.09.26.08.33.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:33:03 -0700 (PDT)
Date: Tue, 26 Sep 2017 21:02:57 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com,
	outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: vc04_services: fix typos
Message-ID: <4e680bd818dbb437c6abd06e88ea2b7c7c57547c.1506439214.git.keerthigd4990@gmail.com>
References: <cover.1506439214.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506439214.git.keerthigd4990@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Some words are misspelled. Fix typos.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
changes in v2:
Capitalize starting letter in commit message

 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 2 +-
 drivers/staging/vc04_services/interface/vchi/vchi.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 52cdf4d..1144d9d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -70,7 +70,7 @@ enum mmal_msg_type {
 
 /* port action request messages differ depending on the action type */
 enum mmal_msg_port_action_type {
-	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,      /* Unkown action */
+	MMAL_MSG_PORT_ACTION_TYPE_UNKNOWN = 0,      /* Unknown action */
 	MMAL_MSG_PORT_ACTION_TYPE_ENABLE,           /* Enable a port */
 	MMAL_MSG_PORT_ACTION_TYPE_DISABLE,          /* Disable a port */
 	MMAL_MSG_PORT_ACTION_TYPE_FLUSH,            /* Flush a port */
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index ee92189..66a3a06 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -187,7 +187,7 @@ extern int32_t vchi_service_create( VCHI_INSTANCE_T instance_handle,
                                     SERVICE_CREATION_T *setup,
                                     VCHI_SERVICE_HANDLE_T *handle );
 
-// Routine to destory a service
+// Routine to destroy a service
 extern int32_t vchi_service_destroy( const VCHI_SERVICE_HANDLE_T handle );
 
 // Routine to open a named service
-- 
2.7.4


