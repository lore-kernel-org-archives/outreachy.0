X-GM-THRID: 6754500769734459392
X-Received: by 2002:a62:b616:: with SMTP id j22mr22503553pff.55.1572734756326;
        Sat, 02 Nov 2019 15:45:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:4342:: with SMTP id k2ls175431pgq.6.gmail; Sat, 02 Nov
 2019 15:45:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwOJYVTOq6OEZb2JqotpXs0YmYBk2lnOGL/ubptCSs2FaTxBFo22Yhz9fO4DuSO4HfdL5+e
X-Received: by 2002:aa7:8e15:: with SMTP id c21mr2101866pfr.122.1572734755125;
        Sat, 02 Nov 2019 15:45:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572734755; cv=none;
        d=google.com; s=arc-20160816;
        b=ID/jexkNJwVyp5EAPUp/Elp+CH/4MP78Qv4DyPCSjpmJhC3y0WRI4wiqCpAJDpUFMx
         1ZZPtPjfajXMRr6rTh/D1iiFrnHDlbThYM+MfivXqDl3ugBIm0XNSQAhXc0Oi074OBtp
         BAEDN/dMe+DLItzFqpVX8WL1YVT4vZFswvQ8XwjXb0nfpnNTFyKoZGSfPq07CCtbojer
         kE5mYDyqmkw9MTJkAWp1nV2SuufWonkKQUnR0e+H+D2eKqWc6MR2ES6qisC1B+MxgYd+
         hY6MeIdrMkPVFb1YbyDteQo/s3jjjqJOfc4YUR4y1EUoY14fR5TPnmm7xYv/nkVl7faZ
         xaaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ilT2zI4rF7nwcW2GWQdDkhVZZ9wD2h5VXAAVVL51wHA=;
        b=It9lFKadWKAroE0+yQFDIMLnjW1aL7qmOmuuXCDcnFGRfSbwALdmtVBnnVqRiezX3C
         SkcFPL8o8vV/D03RUXF0KK6oIySxqlrwmrQOWygAOW45FgbExpBIpLU/cQt49Yk9TkGK
         z4MFQ8VJgQVbKrZ3Gy6o8Heo+tKbpjeYUGGgm1z6UeCVKFtXqnTHZ9x8An5EX/ID4I/N
         BQREVJ5402lz/+e1gNuSzqLdGj6VbUBbWjZzl04c4iHzwoP91WXpzfsjKQ7ih5t6zf3W
         1oSpYfMgKgkxRrDGCOR1JY2XMzUDX26TUVRTfPAk+1OG6ysk8m/LlISM17Jg6klV6iol
         sKFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QV32usgE;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id be9si506395plb.3.2019.11.02.15.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 15:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QV32usgE;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x944.google.com with SMTP id r22so1374332uam.11
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 15:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=ilT2zI4rF7nwcW2GWQdDkhVZZ9wD2h5VXAAVVL51wHA=;
        b=QV32usgEpBbVa++qEYZmHagiHgKG7lWRCPrCx5SnQX4RnMrXrTkq4kZav5SVjB87wO
         gxo6k7J8CX3QBR3YcWlVspLmOIemQnh4i/Z0cJqIRD/+9E5RnDYPDlm4zQvNFYTwin6L
         gY4mtpavSy3Ml/Asl5ZvGRi+0vUNmoRUQqWsYgbRRDx9FGFVAG06gLja8TSH8wqgrbIg
         rJTsDtSj6PQPxdYmnkfRN/XG6XcuV0iPTJsIPSFWdaWDvmd67npw0AV3LqQpFcOBo+RZ
         Ici7nzMD97Gn2ei+CtcHIvBB2acWGENTu8PN9hkpu/2AfKrvCI0NquqXFFP2/akfV1j7
         JUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=ilT2zI4rF7nwcW2GWQdDkhVZZ9wD2h5VXAAVVL51wHA=;
        b=TozrrGbs77qDO/gE6s1KMRQ1gR6xSd/daddv4lK8hULSUwnifL8oRqaDsK0ScmeuWc
         Yho76Pf7xqbn2jTadhcNVJXQgLdAhX/nvyWQpRZJBGy+eXgiC9hDSUntGktK35ov/hIi
         N+B9EmPDFmsBS91ixjUAVPGhBX8a3uK7itg3pN+qiVon13v6LIEop2if9aio9BA4ed3C
         9kgs/DNqGdI9ISE8fbkgETOmz4t29uE45JiT0t6ha13dSOX3ypA9KlWi8o7R5aQQPSWx
         gOR1Ilfyl2n2LFX/GTsHB8/b2W2NMv58qa5OhcM9TQeqWiZlk6DHZvLGpsh3IFyqnn90
         8W1Q==
X-Gm-Message-State: APjAAAVyNTt1u4dABMedSGZhHv1RRTvjnHkyyzYSmdJanw5opnqiIkPr
	IuSCL/c57RNP9POOiEIJoi9MXHRYPlEaAA==
X-Received: by 2002:ab0:55c8:: with SMTP id w8mr8626615uaa.66.1572734753966;
        Sat, 02 Nov 2019 15:45:53 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-29-125.dynamic.etb.net.co. [190.27.29.125])
        by smtp.gmail.com with ESMTPSA id 184sm3126651vsk.30.2019.11.02.15.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 15:45:53 -0700 (PDT)
Date: Sat, 2 Nov 2019 17:45:51 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8723bs: Remove
 unnecessary conditional block
Message-ID: <20191102224551.myb6rjyhvgbldpt2@gmail.com>
Mail-Followup-To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
References: <20191102003236.hjetw3qdulk7skrg@gmail.com>
 <20191102104324.GA184849@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191102104324.GA184849@kroah.com>

On Sat, Nov 02, 2019 at 11:43:24AM +0100, Greg KH wrote:
> On Fri, Nov 01, 2019 at 07:32:36PM -0500, Javier F. Arias wrote:
> > This patch removes a conditional block that had no effect.
> > It also reformat the affected lines to set the right indentation
> > after the removal.
> > Issue found by Coccinelle.
> > 
> > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/sdio_halinit.c | 19 +++++++------------
> >  1 file changed, 7 insertions(+), 12 deletions(-)
> 
> I have 11 patches sent from you, on the same day, for this single
> driver, yet I have no idea what order to apply them in :(
> 
> Please resend all of them as a single patch series so I have a clue as
> to what to do here.  Be kind to maintainers :)
> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102104324.GA184849%40kroah.com.

I'm sorry Greg, I had some patches ready to send and i didn't want to send a single patchset with +200 lines (as suggested in the documentation) so I thought it was easier to split it.

I'm going to resend the biggest patchset for now.

