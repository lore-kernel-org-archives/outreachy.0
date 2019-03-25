X-GM-THRID: 6672001868710805504
X-Received: by 2002:a50:9ea8:: with SMTP id a37mr14492976edf.147.1553478428187;
        Sun, 24 Mar 2019 18:47:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:90d6:: with SMTP id v22ls1121283ejw.6.gmail; Sun, 24
 Mar 2019 18:47:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyz1+IYKuM6yTQJ2IrrgUawu3ErQjkQh/UkU2/r2RsQBAv/xmDwSRx+esTNKg5LPptuO5tb
X-Received: by 2002:a17:906:640f:: with SMTP id d15mr10916422ejm.217.1553478427156;
        Sun, 24 Mar 2019 18:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553478427; cv=none;
        d=google.com; s=arc-20160816;
        b=zT3+6PxjENjOhQofD2gXLo0Fp+LqaZ5FpyWiz2CsNUfeh7+mUM1xMlVzU3xZ+rWX4F
         SrIDzW+CEGPzcwzpIKlyJwMqhJdH85XpTWPlcuRd/sm2sq9PkGf6L7Xxcovpya1y0vYz
         oRQDQVjAKX58e1yM4df0RYO2tkrLkEh0/LxXMlleXTJMenj05QZf1FnNYXIjzDS7wh4X
         dmYZetO9SNc2QihobviSpjyg7P/KmGB6NtlNmMwUo6uw5I7pN8Z+7c8RRbicRTVoAw1X
         Rh8yhDhqCxRU3my/AWkSfI6vTdsu5EQfFRX0pxnNtMpsPqpDvDxxZtqj1DV5HoiRhDBB
         p/9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tzrX0rMQSYjIE241D34l7k3qHx1LE8TaDJYpAE+aWj4=;
        b=chOLf+1zbTHKSaQRFJ2VR2STSDRXywU/GJ501CddsibC5d0ApPN9v1SbQDOwT26eCS
         DafQef2qoNL//7willv1HSw9Vtb2rB1ZQZxWlrFBHRWszXNRNrsw/fHL6N/nj9e3qxWz
         uweWJUWGJzDEtnw01yBYTE3D1WLKjNRgrcpS84sZr2syQrmu7JWw/VfQYwfdEUEgAbO0
         MX7PnFd7WxKMcJi5r7kIVs/XIQ3c0FMMLm7RUKUZR6gbKJmPaowAtPrO4UArvlPG1A54
         U6GHWrKZRUz8zyr2yk+zUm5jdnMVoYwkA2Vt0gnI2mbjTpngBCD5xGV3ZOhXUe8ALRQP
         LVlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=NjJiVqDf;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [2001:4b98:dc2:55:216:3eff:fef7:d647])
        by gmr-mx.google.com with ESMTPS id i17si317303ede.0.2019.03.24.18.47.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 24 Mar 2019 18:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) client-ip=2001:4b98:dc2:55:216:3eff:fef7:d647;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=NjJiVqDf;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (30.net042126252.t-com.ne.jp [42.126.252.30])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 92283E2;
	Mon, 25 Mar 2019 02:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1553478426;
	bh=lex6j7OLrUUGxcW0k4Tkf1KjfWVInfax5yH8AxOtUjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NjJiVqDfx+F5aU2A/sFpiKOPXnZjHRuylVwFH4J282zPfvPENuQPkCxwoGB+qI2VU
	 qI0vQiNeZQ0jTdukbc55pN89qwt3EEY0VLdfeZ+NjgRnmgZaj7iMZL4Fh+tP57ZRpC
	 WjAMyOMSP+4EYRtnIrN2HgZE6fU+WyPJ0rrUvujU=
Date: Mon, 25 Mar 2019 03:46:54 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, mchehab@kernel.org,
	Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use
 list_entry instead of container_of
Message-ID: <20190325014654.GC4540@pendragon.ideasonboard.com>
References: <20190324165433.95833-1-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903241812520.2526@hadrien>
 <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hello Himadri,

On Sun, Mar 24, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:
> On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Sun, 24 Mar 2019, Himadri Pandya wrote:
> >> Use list_entry instead of container_of for lists iss_buffer and
> >> iss_video.
> >>
> >> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> >> ---
> >>  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
> >> index f22489edb562..e8d27b7ac329 100644
> >> --- a/drivers/staging/media/omap4iss/iss_video.h
> >> +++ b/drivers/staging/media/omap4iss/iss_video.h
> >> @@ -118,7 +118,7 @@ struct iss_buffer {
> >>       dma_addr_t iss_addr;
> >>  };
> >>
> >> -#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)
> >> +#define to_iss_buffer(buf)   list_entry(buf, struct iss_buffer, vb)
> > 
> > Actually, this macro is no longer used.  Perhaps someone else converted
> > the uses to use the proper list operations and forgot to drop the macro
> > definition.
> 
> Then should I send a patch to drop these macros?

It would be better to modify the to_iss_buffer macro to convert from a
vb2_buffer to a iss_buffer, and use it where the driver currently uses
container_of directly.

> >>  enum iss_video_dmaqueue_flags {
> >>       /* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
> >> @@ -170,7 +170,7 @@ struct iss_video {
> >>       const struct iss_video_operations *ops;
> >>  };
> >>
> >> -#define to_iss_video(vdev)   container_of(vdev, struct iss_video, video)
> >> +#define to_iss_video(vdev)   list_entry(vdev, struct iss_video, video)
> > 
> > This doesn't involve a list.  Nor does the previous one.  To use
> > list_entry, the third argument should be the name of a field that has type
> > list_head.
> 
> Understood. Thank you.
> 
> >>  struct iss_video_fh {
> >>       struct v4l2_fh vfh;

-- 
Regards,

Laurent Pinchart

