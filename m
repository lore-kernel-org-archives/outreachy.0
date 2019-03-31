X-GM-THRID: 6672001868710805504
X-Received: by 2002:a5d:6189:: with SMTP id j9mr1319533wru.0.1554026902013;
        Sun, 31 Mar 2019 03:08:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e94b:: with SMTP id m11ls308943wrn.5.gmail; Sun, 31 Mar
 2019 03:08:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRP3/HI5RvWmcVUck+84BWmF30qjOWYw+MoQ2FAMpeTQ4+xUe7Eh2U9cz0lLFL0onomRYZ
X-Received: by 2002:adf:de84:: with SMTP id w4mr1650928wrl.13.1554026900801;
        Sun, 31 Mar 2019 03:08:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554026900; cv=none;
        d=google.com; s=arc-20160816;
        b=LiZqQhdVbzzU6pIyJ+ruDbnAhSC9rHyfPXxjsSclAxGhTEjp+mXXbUkOrt81aQgN/k
         rNoop/r6al0bFRfGBk9CglKZ/9rPT7IgAOEof1zWhUJxx1gEBUxvg3P3KmMj5T729lTB
         nlOffVlD2rXytXWNbvJ721dWaGRaMdWFmlWxgd3sLCS12XlCR5rD2BUBpp9PZoUEBFCZ
         M/w18I345ZRhk/gI3pc6EdJJ1cQF0g8J6Gf212lWL2SMevVAn8IKBOZSXl8EerJ79mNQ
         N037asFi+fVn9kHZ/xkgrGa8zOpK3Q4n06lWB5cNtwRQdhsHgwmZf54WsAlRU8mC7M7G
         eCcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=pYj1fR2un2CK81WzwMfGLc1owPOwKjQ+vBiZWB31ef0=;
        b=IBzZV+GOgRmKssqVTuX5JlRj4i5MK+zIt1CTdkfLtxgPdLBeFGLEMk5zMV+Esihxyh
         Ez+GKssUicEXj8zehYNUu2qnZniS1kfPlslXEGfHroO9q6NlQ6MDpUOxDXFFcOztwMxe
         5x2te+pr7Dlu5YblT0pBwzyhDdVaWlJRpe6majtxPq0ITXtSBY8+ecxBgRBU2981Kk54
         PCyCitAv/rln1mo+mc0s/T9cjaGAnQfeHeNT9D9A/fgxji1inG2T/nsbeC6qUb+Jjt4x
         wJWnPtQYCf4ZQ2ZS6mnDMyO1jTuCwH3XFbi6PcUjD/4wu+xSzW6KFzuIcs45VYgYx5yp
         Nelw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=bFNAlvin;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [2001:4b98:dc2:55:216:3eff:fef7:d647])
        by gmr-mx.google.com with ESMTPS id f135si176503wmg.2.2019.03.31.03.08.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 31 Mar 2019 03:08:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) client-ip=2001:4b98:dc2:55:216:3eff:fef7:d647;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=bFNAlvin;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id EC093E3A;
	Sun, 31 Mar 2019 12:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1554026900;
	bh=G018/OoKJ8/R3lWFRhD2N/XnvjzwzWisOw9EqM9Em24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bFNAlvin3okPW3wn81sTsOxV69+BBXaudUM1w5cYxfLNOPuQfSi+pBWRGZ/ipejRp
	 hDaBx66Q+sQ2Vl+scRVBObdPK7eyv15zAw25uj85KFywaEOXRUN3lJstHfOe6o5Thh
	 KiaCqtJfAMfV6wkAQrXW5/mnRRdrodADQMIllbZg=
Date: Sun, 31 Mar 2019 13:08:09 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, mchehab@kernel.org,
	Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use
 list_entry instead of container_of
Message-ID: <20190331082502.GA4781@pendragon.ideasonboard.com>
References: <20190324165433.95833-1-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903241812520.2526@hadrien>
 <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
 <20190325014654.GC4540@pendragon.ideasonboard.com>
 <CAPnhUpaaXSAe4wPZZ=mpfQJZAR1MkNfU-0NbD7assXfmL3Tr9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPnhUpaaXSAe4wPZZ=mpfQJZAR1MkNfU-0NbD7assXfmL3Tr9w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hello Himadri,

On Wed, Mar 27, 2019 at 01:13:27AM +0530, Himadri Pandya wrote:
> On Mon, Mar 25, 2019 at 7:17 AM Laurent Pinchart wrote:
> > On Sun, Mar 23, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:
> >> On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall wrote:
> >>> On Sun, 24 Mar 2019, Himadri Pandya wrote:
> >>>> Use list_entry instead of container_of for lists iss_buffer and
> >>>> iss_video.
> >>>>
> >>>> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> >>>> ---
> >>>>  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
> >>>>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>>>
> >>>> diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
> >>>> index f22489edb562..e8d27b7ac329 100644
> >>>> --- a/drivers/staging/media/omap4iss/iss_video.h
> >>>> +++ b/drivers/staging/media/omap4iss/iss_video.h
> >>>> @@ -118,7 +118,7 @@ struct iss_buffer {
> >>>>       dma_addr_t iss_addr;
> >>>>  };
> >>>>
> >>>> -#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)
> >>>> +#define to_iss_buffer(buf)   list_entry(buf, struct iss_buffer, vb)
> >>>
> >>> Actually, this macro is no longer used.  Perhaps someone else converted
> >>> the uses to use the proper list operations and forgot to drop the macro
> >>> definition.
> >>
> >> Then should I send a patch to drop these macros?
> > 
> > It would be better to modify the to_iss_buffer macro to convert from a
> > vb2_buffer to a iss_buffer, and use it where the driver currently uses
> > container_of directly.
> 
> I am sorry but I am not sure if I understand what you are suggesting
> correctly. 
> 
> to_iss_buffer is defined as:
> #define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)

to_iss_buffer() casts a vb2_v4l2_buffer pointer to a iss_buffer pointer.

> And it is not used. Instead, container_of is used directly
> static void iss_video_buf_cleanup(struct vb2_buffer *vb)
> {
> struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
>         ...
> }
> 
> static int iss_video_buf_prepare(struct vb2_buffer *vb)
> {
> struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
> struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
>         ...
> }
> 
> static void iss_video_buf_queue(struct vb2_buffer *vb)
> {
> struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
> struct iss_video *video = vfh->video;
> struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
>         ...
> }

These three functions need to cast a vb2_buffer pointer to a iss_buffer
pointer. They do so by first casting to vb2_v4l2_buffer, and then to
iss_buffer with a direct use of container_of. It would be best to
combine the two casts in a single to_iss_buffer macro and use it through
the code.

> If I understand it correctly, these usages are converting vb2_buffer to
> iss_buffer. Which could be done by using the to_iss_buffer(vbuf) as well. Why
> is this macro no longer used? I also don't understand what modification you are
> suggesting. Can you please elaborate?
> 
> >>>>  enum iss_video_dmaqueue_flags {
> >>>>       /* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
> >>>> @@ -170,7 +170,7 @@ struct iss_video {
> >>>>       const struct iss_video_operations *ops;
> >>>>  };
> >>>>
> >>>> -#define to_iss_video(vdev)   container_of(vdev, struct iss_video, video)
> >>>> +#define to_iss_video(vdev)   list_entry(vdev, struct iss_video, video)
> >>>
> >>> This doesn't involve a list.  Nor does the previous one.  To use
> >>> list_entry, the third argument should be the name of a field that has
> >>> type list_head.
> >>
> >> Understood. Thank you.
> >>
> >>>>  struct iss_video_fh {
> >>>>       struct v4l2_fh vfh;

-- 
Regards,

Laurent Pinchart

