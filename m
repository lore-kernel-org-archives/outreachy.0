X-GM-THRID: 6806098614327181312
X-Received: by 2002:a2e:7a0f:: with SMTP id v15mr6134477ljc.156.1584722962275;
        Fri, 20 Mar 2020 09:49:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:33a6:: with SMTP id i6ls1093103lfg.1.gmail; Fri, 20
 Mar 2020 09:49:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvGpOJxpbuaqaOqN26TTOY9mqQDrkDL9Y7+gjQY6m2E7tZ0sgsI+MFu31KfqSvq6IEKMock
X-Received: by 2002:a05:6512:1042:: with SMTP id c2mr5800886lfb.6.1584722960735;
        Fri, 20 Mar 2020 09:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584722960; cv=none;
        d=google.com; s=arc-20160816;
        b=FW+m9MK5e/xfZYEyeoALWA3rtAEBqU3YyaNlVHaGLfAksD45dmRO6NGcF9/D1WgiKO
         0llGxwrb5WqB/Sepwg8Nqqg96AN/d4J+TuMrtC6ReIOU3DMti9hwPmGvI2JfIdz1AldF
         6cRhz1ienWWj+DXRiBHpF7rDSV/L4w/uamzVCS/ii1vcZ//1w69MXc7ySEfFu4MYflru
         OEYhztn9fTmyCRqU1y8u+p8DxQV+hGkB2gYrp2uG73uCnNNHr5GLMfW4JBdBtmK5N4mv
         Ld8X9jZQVNj7aUhKVbJddQ2tNZbhDtXNKlJfBX/zyP1az2b2yFPesElOh/gR4aZhtTqN
         S8eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date;
        bh=lgHKEkWZkWXL+WDCPW2hqi/D9w9yebj4KGPdC8RAFcw=;
        b=b7QwUGuj4FNoGkCHnN6mXj24SJJt8B8JX4g4HfcEvq1h+L3fJZKpvrxl7/xSwHT1LN
         wlDrU3xNQnTfuYmFgI82UHQAh/jp5FqFyY2B61Fwuvnya+/Na5oVPMHyu+D5dBpsaxcU
         l/TnLrnDsG0DXFuBTJUpnNh8yTmpaWDsoC+SB7eaCilXrROG8ep3fMe8ZYrlnuu7SVRe
         09PgYcsapzNhU4t3cqsDEEGQGVPXmBtzoK534UNkZsE4Wh28MT3DbBPA4krimM/NymCa
         6VGcrrKDj1LID0rotja2sYd97lwDErQRzQXbdNrOhOEmQ7T0nJLF5+c9zlqyWR6/o19c
         wZiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id a21si457457lff.3.2020.03.20.09.49.20
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 09:49:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 11185 invoked from network); 20 Mar 2020 16:49:16 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 16:49:16 -0000
Date: Fri, 20 Mar 2020 22:19:02 +0530
From: R Veera Kumar <vkor@vkten.in>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 2/2] staging: rtl8723bs: os_dep: Remove whitespace
 characters in code line
Message-ID: <20200320164858.GA6721@tulip.local>
References: <cover.1584667932.git.vkor@vkten.in>
 <7cf2a33375608b6c00713ba55234c9686af499a4.1584667932.git.vkor@vkten.in>
 <20200320140558.GB643325@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200320140558.GB643325@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Mar 20, 2020 at 03:05:58PM +0100, Greg Kroah-Hartman wrote:
> On Fri, Mar 20, 2020 at 07:08:23AM +0530, R Veera Kumar wrote:
> > Remove five leading whitespace characters in code line.
> > 
> > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > index 87090af7d776..1502477e48bb 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > @@ -79,8 +79,8 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
> >  
> >  	if (sub_skb->len >= 8 &&
> >  		((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
> > -		  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
> > -		 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
> > +		eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
> > +		!memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
> 
> No, the original was correct here, checkpatch should not have complained
> about this.
>

This is V1 patch. I removed a single white space before "eth_type !=" as
definitely it is compound argument code.

Please see V2 patch. In which Greg says this is fine.

Should final comment by him is to be accepted?

Veera

> thanks,
> 
> greg k-h

