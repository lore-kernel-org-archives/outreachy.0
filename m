X-GM-THRID: 6747765295374401536
X-Received: by 2002:a67:7a86:: with SMTP id v128mr18677798vsc.163.1571109861592;
        Mon, 14 Oct 2019 20:24:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e28c:: with SMTP id g12ls1602045vsf.11.gmail; Mon, 14
 Oct 2019 20:24:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWcQfPegt8e7CmTdqmWBXOU/65/Da57CQIrcUXTWnL1BeZ7FAYPM5VEfXe51ZZOquDxfEk
X-Received: by 2002:a67:f2d7:: with SMTP id a23mr18675578vsn.235.1571109860665;
        Mon, 14 Oct 2019 20:24:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571109860; cv=none;
        d=google.com; s=arc-20160816;
        b=u5bn0OFd4Kad8sMeVwtycot80XUCAU66MJflsywx+/5ODmyj6bGiDssm04S1q7rK5E
         uufufGNPhvnn/o3pdakyDhJ3xsYrz98MYRmMJFeXp4f4OgFzv1gchf4Y3FM+2bhxqbLm
         uHIGv3js2+gsO5FDg3yuvVQ7aNJOrdd8YbEuxGSiQU2vYCCiox+8gciy5kCSv+aatroo
         usKWE4fHjo+rxupcKsle2AJPFQWTnPstWsqIBBv0a07nazvNg+FzG59wh6YP358VeF0x
         +A/LMu4aF0nz7W7bBEqLnxlu5GKeZV82AiiSpyv8pKwM9aeW2esF+UReNSlurND2+c6l
         13PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BJJbPz+/WsvS6Uz6d9giELgDgcORUywdK+1rp29DxUo=;
        b=pqE6R3OJenLzru3vdLc8dvdUpkHcvbV6duMp3dztSXwkp0foivJTpUlL9PBTRxJpa4
         bUWKga9w5jsR1maF/nvOCLkWL/y4J8clAKi9geppJ523IzLv27YlvIQlVpMczHyp25Hd
         DGgX/MRM57fMfLfbUzxrlj/w2nNxE6o8A0fErRI5rSehPEDBO95IeABhYKEa9UjiUZK5
         JcEznPS5YVT6Xx6+I4ikMyvwe80jq/2Ym4x4gBb0zcV7n7s9S0SRT6wOwemT806BbusW
         Z+DW7af92U+8MrzPkvce4uqcHTHorFPX4o5UK7G+9qBvKCVYmM6cSp8fzchXe7ohaS4v
         CvJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W9UivAp+;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v4si1062460vka.3.2019.10.14.20.24.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 20:24:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W9UivAp+;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id p30so11235574pgl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Oct 2019 20:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BJJbPz+/WsvS6Uz6d9giELgDgcORUywdK+1rp29DxUo=;
        b=W9UivAp+ktLzqsYHm/Wr/dOqKAtemtK4Alw93tQyEnwCaEuvn3yPtXAIq/TQIO+51k
         rz4i03aaA8xumGOhHHQ+fUzieu/oH5gjqq1gdDMNx8r7d2b/fgg13Cr7hi4vbSqtcKwn
         gW5emXqqgGPPVsw/TE0AZK8pK8CafldHh5pB1UEMcN8p4yywPMHaDTyFkbYrL1ZlE6Im
         kCOWjkJzW/MjtMVHAD8HDS/hvzRve19Zgc4Um4q05DyH7P9Mjy6RgeNK1DARONCMNFoZ
         al92ZjJQWRWuYFSSixhxdO+pJfBZHmLPeG4DPect9OdlWxEMIAKo4EOyK4c98Mw+9b55
         A7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BJJbPz+/WsvS6Uz6d9giELgDgcORUywdK+1rp29DxUo=;
        b=iOwttr6pGtQhBmC8aSJQPLUSru0szGI+27Sn4uueJpn/zZwBRSBEWbV7b2uPYUlT9H
         RvbFXgWa4G+cT4pR6bV9FMGYEAEV2XgE/FMHIKa7JeATeJwNXYec+Oab8ZC8jTpuVCB9
         qeDrbn9yM2xGsf37w0PpfMpTm2ypvv/qQUZd73LeBUUF3jx25plJ3RpENwgZaHpzV1KO
         TmLy7Gz4ttQroKc/G2kfwQXnLyWA7tEtiT3fUES2GXfyFnJFPpSb6gVi3+wcOMLMllR+
         SJ00onixi+YVr1uAYesRf25cdDrCYzuauD2mVv3V3sQsFkYFK7CVcNeNRsjLBuCjecla
         EL0A==
X-Gm-Message-State: APjAAAWKPc/FE+cEXMtayTKcwtVaNi/KA0MjQtksSk5RiAadw1WF/2UU
	sg2aYybL2Np2ZLHNCWLXwybDpCDC9TA=
X-Received: by 2002:a63:5d1e:: with SMTP id r30mr15811150pgb.68.1571109859334;
        Mon, 14 Oct 2019 20:24:19 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id i8sm19776737pgl.18.2019.10.14.20.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 20:24:18 -0700 (PDT)
Date: Mon, 14 Oct 2019 20:24:18 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com,
	vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Fix quote string
 split across lines
Message-ID: <20191015032418.GA21749@jamal-XPS-13-9343>
References: <20191014205529.919-1-jamal.k.shareef@gmail.com>
 <alpine.DEB.2.21.1910142308280.2631@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910142308280.2631@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Oct 14, 2019 at 11:10:31PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 14 Oct 2019, Jamal Shareef wrote:
> 
> > Fix quoted string split across multiple lines.
> > Issue found by checkpatch.
> >
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> >  drivers/staging/greybus/audio_manager_sysfs.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
> > index ab882cc49b41..54b0caf22b5a 100644
> > --- a/drivers/staging/greybus/audio_manager_sysfs.c
> > +++ b/drivers/staging/greybus/audio_manager_sysfs.c
> > @@ -17,11 +17,11 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
> >  {
> >  	struct gb_audio_manager_module_descriptor desc = { {0} };
> >
> > -	int num = sscanf(buf,
> > -			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
> > -			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> > -			desc.name, &desc.vid, &desc.pid, &desc.intf_id,
> > -			&desc.ip_devices, &desc.op_devices);
> > +	int num =
> > +	sscanf(buf, "name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
> > +	       "vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> 
> It still seems to be split over multiple lines.  The point of the message
> is that you can exceed 80 columns if doing so puts the whole string on one
> line, making it easier to grep for.  On the other hand, the use of the
> macro already makes part of the string impossible to grep for.  So the
> macro could be on a different line from the rest of the string, reducing a
> bit the overall width.
> 
> julia

I was under the impression that the warning was specifically for the
quoted string that starts with "vid...".

We can proceed with the macro fix suggested if that would be beneficial.
Thank you for the information on grep, was not aware of this.

Jamal
> > +	       desc.name, &desc.vid, &desc.pid, &desc.intf_id,
> > +	       &desc.ip_devices, &desc.op_devices);
> >
> >  	if (num != 7)
> >  		return -EINVAL;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191014205529.919-1-jamal.k.shareef%40gmail.com.
> >

