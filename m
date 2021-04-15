X-GM-THRID: 6951428911153545216
X-Received: by 2002:a05:6830:149:: with SMTP id j9mr211188otp.66.1618505667676;
        Thu, 15 Apr 2021 09:54:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7dd4:: with SMTP id k20ls1504692otn.5.gmail; Thu, 15 Apr
 2021 09:54:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3L44Pf+PkVLqq5QIIy/5wId/mzbj3AXHLUaR7NqZg0JFAE4E3T98hcjyHyPwqWCFEve/q
X-Received: by 2002:a05:6830:1bc1:: with SMTP id v1mr201053ota.194.1618505666851;
        Thu, 15 Apr 2021 09:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618505666; cv=none;
        d=google.com; s=arc-20160816;
        b=uTEVIx4Mpg86APJz545uFqZaVcf+LxoseZA9EXX/kDw0dwVu3YJf+AZ21Jd1DzojTf
         nC+i6WcAlN6vnnquq/S/dsB1s7wf7lFOSrvrceJAkITTDIoxoekcshBrCDaI8958Z/sj
         1QFhUZBnBF6LMqPRAjYZvRHtdIBQz4vleWtEiUzqfIF9sJNVBi1YLCAW4gQOf+LI+Te2
         /FNGEL7zizaooFe2j+QmJJ5dTUh21TAgC1RoMStoLuWj1cmVlSJi5ggkw3KUcEeaBVsl
         dR6VTAzw6LFB148SQMicuB3JmsD48Bzx8i/rncKSBzWW7aeWm9FWe0BkcPfBIMy9ksxf
         nWlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dx1/r/N68A6cT3i6PlmlaAahaUCvbfGXrjCcPAhDBzw=;
        b=ZX5OvfyCzBuGej6326QvD+BFqRAyTo4dJ5E2RA/HDJilYQ4bwCoRs9oSB6gANIHPpw
         pF9N3EmkTGRxaDT288NYGnx+KzTtowACFMiyzA6Ym9visXJgmJUN2z7lHf1jsA1YcPG/
         5Vt7yBMapCVEv9S2aUcaJgRRAIGFKBqIFQ6RpD6ai9AC5zZD+A3GsPEMzeY0E0tIBSCE
         CAk4Ksbo3hXRmYESB45s6KxL2H6UBjicRJsJ4YEHCkWn9l0GNtQbUQ6kWQoxDPNpr0xg
         6fOT7rWkmEv+uwxP0eElblJPz3prh1AhNdvWDxDlM2g8SnEH5nlrh94p0jKL1FOCLl2e
         TKMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YgHNKnOs;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id m62si250549oig.5.2021.04.15.09.54.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YgHNKnOs;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72b.google.com with SMTP id h13so7232264qka.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 09:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dx1/r/N68A6cT3i6PlmlaAahaUCvbfGXrjCcPAhDBzw=;
        b=YgHNKnOsdv0YMHXZW8RrF1EPzF/UsNnC5njhIrZcZTbUN0jevFraJl6ifAxPsgKZjH
         ZCAV0uJCXeFnk5xyFdC7DYU164c7z/sU8pqN6lMflO6OQihEMJsIuR+oJ8ffhKvgBXDj
         FvjbVgdBAV8rotE0N6UyQVy6/K0m4U5J3ktzAi9lY2f6L/9p4xjkOp9eeu1ME50WeefW
         r6IqTFdMyDsrithLZWyTKicveeH24ji1HFeofN5lPWL7oOkK6W5VvB+tXwfiWC2LlZ2w
         gyGxmw7LgYqXHpGiK44NpJ0VJ7NixccMrA0nAc9oUZQumH6BZZf/QKYz9XGGoTuh9En0
         mulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dx1/r/N68A6cT3i6PlmlaAahaUCvbfGXrjCcPAhDBzw=;
        b=l8xCEBNPV+y5Z7l+BGZmc1Z5GRJEKJ8Npm+2/LYqxjY6I4uzOB2DfBHDhcEUAISRCK
         /LA66DOf27UOWJ+qB8cZQGJoRpINciZaW3ptuhMRGBZYNRdk7ayLnuapfMf3RbMpM40M
         wHygauI04dJDai5IYJmOnMMSeFVH/ty5/NJhlcg9SXtW5CaL/8EuozKEOuIiw9YK7n7N
         Kv1nTSqbRH6m2/Jg88TCX4rxKqcouO+aRQ48WTxcaDO25z1c584GWy6nWypUiQPkqSd3
         v5XJha/ZnMeNzPox7bepMTvvMW0SpiZc6dMHItPZkTHityeym7u7V+mfiwbwBQAPm4aH
         O9/g==
X-Gm-Message-State: AOAM533ddUCqQj/LyIhB6fbkTS3/V/W5YVns4V8vWLDWdVExC4HfgHoA
	r3uB0VNOOoJudB/XAJZ+ASmXCgjuFVh1QD/z
X-Received: by 2002:a05:620a:1432:: with SMTP id k18mr4316365qkj.151.1618505666414;
        Thu, 15 Apr 2021 09:54:26 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id 7sm2416170qkl.107.2021.04.15.09.54.25
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 15 Apr 2021 09:54:26 -0700 (PDT)
Date: Thu, 15 Apr 2021 13:54:23 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: media: atomisp: pci: Balance braces around
 conditional statements in file atomisp_cmd.c
Message-ID: <2e1b53962aab474ab092b1cf09afeb05de7eeabc.1618505476.git.alinesantanacordeiro@gmail.com>
References: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Balance braces around conditional statements.
Issue detected by checkpatch.pl.
It happens in if-else statements where one of the commands
uses braces around a block of code and the other command
does not since it has just a single line of code.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index abc17ec..8a5796e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -1132,9 +1132,10 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 					asd->frame_status[vb->i] =
 					    ATOMISP_FRAME_STATUS_OK;
 				}
-			} else
+			} else {
 				asd->frame_status[vb->i] =
 				    ATOMISP_FRAME_STATUS_OK;
+			}
 		} else {
 			asd->frame_status[vb->i] = ATOMISP_FRAME_STATUS_OK;
 		}
@@ -4898,9 +4899,9 @@ atomisp_try_fmt_file(struct atomisp_device *isp, struct v4l2_format *f)
 
 	depth = get_pixel_depth(pixelformat);
 
-	if (field == V4L2_FIELD_ANY)
+	if (field == V4L2_FIELD_ANY) {
 		field = V4L2_FIELD_NONE;
-	else if (field != V4L2_FIELD_NONE) {
+	} else if (field != V4L2_FIELD_NONE) {
 		dev_err(isp->dev, "Wrong output field\n");
 		return -EINVAL;
 	}
@@ -6548,17 +6549,17 @@ static int atomisp_get_pipe_id(struct atomisp_video_pipe *pipe)
 {
 	struct atomisp_sub_device *asd = pipe->asd;
 
-	if (ATOMISP_USE_YUVPP(asd))
+	if (ATOMISP_USE_YUVPP(asd)) {
 		return IA_CSS_PIPE_ID_YUVPP;
-	else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_SCALER)
+	} else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_SCALER) {
 		return IA_CSS_PIPE_ID_VIDEO;
-	else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_LOWLAT)
+	} else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_LOWLAT) {
 		return IA_CSS_PIPE_ID_CAPTURE;
-	else if (pipe == &asd->video_out_video_capture)
+	} else if (pipe == &asd->video_out_video_capture) {
 		return IA_CSS_PIPE_ID_VIDEO;
-	else if (pipe == &asd->video_out_vf)
+	} else if (pipe == &asd->video_out_vf) {
 		return IA_CSS_PIPE_ID_CAPTURE;
-	else if (pipe == &asd->video_out_preview) {
+	} else if (pipe == &asd->video_out_preview) {
 		if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO)
 			return IA_CSS_PIPE_ID_VIDEO;
 		else
-- 
2.7.4


