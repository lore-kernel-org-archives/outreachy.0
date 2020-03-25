X-GM-THRID: 6808244889450446848
X-Received: by 2002:a5d:4c48:: with SMTP id n8mr5252496wrt.414.1585168039105;
        Wed, 25 Mar 2020 13:27:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls1237235wrv.9.gmail; Wed, 25 Mar
 2020 13:27:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtGKIZBqmfgZPT7T/8gMNMrnPnqRjkkgqf3daUSfjNqMpWMwbk7HA2QWfHLM17+gZVgvXOo
X-Received: by 2002:adf:f485:: with SMTP id l5mr5728981wro.58.1585168037922;
        Wed, 25 Mar 2020 13:27:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585168037; cv=none;
        d=google.com; s=arc-20160816;
        b=IMpJoesSvJzogHftJE1mHV6SST++jYom6OnmqX3fN+/kUpZLjJC9U5oXHMO9vnXVtc
         9JllMPDsXTOOEeg1zufVpdmoANlF7SG1L99vf90WZBov/uMHExqM2jXTwQR57BktBMit
         v1wIIdYly1mynEmUdMRYKTa7YasQSWOrUbp3fFz/FgemHIsSum0lWUAM4F4Aljz1N1am
         6k6ZriZwBUTsdJWR+ZuBqD1x4SFOx3z7xRVMulI4fhu2yvN97qoZmuhl2Vda+PxwJym7
         zu/X9c87jqnpaRlwqPuBKyFlpCkLSBBYu9+t/50jki1e9lH04c9fpekDrk1zTZyHdE1F
         goHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DgVojgROaQafWpg6RONfIvuuY63Mi+PzJg2Q3oaJ95g=;
        b=J65K7DSWqBnDcI2CCA82T4NDJqz/VWCqPT9g6XwpXwsc2QxWWo7ztRCQ52pUebDZgZ
         ZWDGIJPuD+jQjZMb4qeDBN0dS/M1DwlLBHoH9Y8LTYq9y0MG5r4QNk83EIHnDJQzKFxU
         Ld3bFEYOmSHh2lZDBcKuFq8RAo8+rsvbgahMgT9ypclwG8VV3lBks0nI+d7zrvyAtpcc
         1hFnUmbGhOAvEkaJBRAClJdWgyIM4KurSphUrAbTOJJYCV2yNZMoMlb2LUkY/3OoO8vT
         SEwTz57ipZbifcRZxEdNMfrnqg1xPv1yVRdVKRl2Sjpxe2iyiqrRybafy4nZSdaCb7jY
         tcag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DX0SC3au;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q2si10383wrc.2.2020.03.25.13.27.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 13:27:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DX0SC3au;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id v4so2930177lfo.12
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 13:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DgVojgROaQafWpg6RONfIvuuY63Mi+PzJg2Q3oaJ95g=;
        b=DX0SC3autmcmgPqg369tZ6xZ12QPkNBr56rjnj43qbPB/8mU66xaKaJ1wC7mON7eQQ
         OTHDaLdCgfG96IJ1rZRdY//RqA5VyLI4seWrTi/tqgSTpZiNkQpbsKWIQfBkSrNJ7WCH
         SMGvNnCDd7giAhBspmTaXSgb/OiLkQI4IULahGLW5W7I97m1H3cXGWM3HI+rQHapesqJ
         5RoSEoOFXUaHU8VuxO4cX7WeXnQ1fd9V8eNABkvte2ArB7oldfNKyUbgM0ADHkBxqR/A
         76DJFVNv8Hc0b7YFW4l0S9YGQYHu+GeMRWLtlRIWQbBx8IQ3vxJgIUoAuphCJeOKwa3K
         gZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DgVojgROaQafWpg6RONfIvuuY63Mi+PzJg2Q3oaJ95g=;
        b=Xs5aHsZF5FQjErrE6jF8SZyluTSp1HYZ/XaNWuLamwfzlqZO3mTrzE8qEGVxxCgjKq
         sHyzJIYUKTTTZ5wUKJpSTy0RxU1Wrfuymc7OgdwXqrQMs8PqUBbT8DlA0/gxDprC3IVZ
         XA6EwNd31rZRhUe4rcBM3fv45WfwzHlxpyCUV2pva8yLQNOP+Dw3MfLemjvQQGaXv82d
         If3sjbHL5nRkpQ4s+H+X0xVaDtoxfk91M0gzgJrTtWxe4LCQA5WRems9GMrrjuCFvYs+
         yrlrFJhqAFOIUdKprd44X3elUMrI8SUXrAFpYmK3iPYKMn4n/pd4DaSKdgSWhpURzyJL
         r1Nw==
X-Gm-Message-State: ANhLgQ2odXzfuvF2kl9hyvj0sboDabJrbSw8yrbAD9ukzA4Oa2la3tYW
	skZGWpOxvZ5qbhr8AjwkXbjx+u41
X-Received: by 2002:a19:be94:: with SMTP id o142mr3387191lff.13.1585168037388;
        Wed, 25 Mar 2020 13:27:17 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.199])
        by smtp.gmail.com with ESMTPSA id r9sm163673ljd.10.2020.03.25.13.27.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2020 13:27:16 -0700 (PDT)
Date: Wed, 25 Mar 2020 23:27:14 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: octeon-usb: line over 80 characters
Message-ID: <20200325202714.GA14306@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved from the comma character to the bottom line after
for it exceeds 80 characters.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index a73289ba..dbafd46 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -2641,7 +2641,8 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
 						     hcintmsk.u32);
 				usbc_hcchar.s.chdis = 1;
 				cvmx_usb_write_csr32(usb,
-						     CVMX_USBCX_HCCHARX(channel, usb->index),
+						     CVMX_USBCX_HCCHARX(
+						     channel, usb->index),
 						     usbc_hcchar.u32);
 				return 0;
 			} else if (usbc_hcint.s.xfercompl) {
-- 
2.7.4


