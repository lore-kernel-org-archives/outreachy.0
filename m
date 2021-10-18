X-GM-THRID: 7018981355604148224
X-Received: by 2002:adf:c986:: with SMTP id f6mr39410324wrh.216.1634579217659;
        Mon, 18 Oct 2021 10:46:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8b92:: with SMTP id o18ls8889102wra.0.gmail; Mon, 18 Oct
 2021 10:46:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyVBFAEzbFZuI3Sm0seMxURv6wIZjjvooNsIvz2eiwyaIg8fQ37mgXNmHmSLMoVVIBB0R06
X-Received: by 2002:adf:8b98:: with SMTP id o24mr37635553wra.302.1634579215962;
        Mon, 18 Oct 2021 10:46:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634579215; cv=none;
        d=google.com; s=arc-20160816;
        b=LcqugrjnRbqzSB3waah0UmDQ5QuxMFwgKiBDlzHX3R1A8b7MgABCrZAYtPzsizNVHH
         VTtps7o+ULwsOQq9Csnwv8lTSz5hSiAT+5oibVelpNiNmSFLF1k8AYMAfA5i/fDKATq6
         dpjqToKMHtQB6kKqVa+JuELfScs6v/pih/huBx30bbhQjHkQajZ/Q9igY3r7+GYun4X3
         gkdgl0lK7TOm3lvcZ2KG7vfKqhB0yBwNDQ/V3c1oYB7eBh/i9IIyhc7nXs0JylWwKO+D
         KL7CbDg5iKqixV3A+69IHxqfb2wA3447GJsB+SV6Mfx1Ek4vJfEEhl1F4fg63ChilFuD
         r5OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=EnktU0oi/jtPWj2NTvi0GM6FWDsGp62HegE676A2iss=;
        b=1KmD1CU38UWPKcIcJgFAEKY81qxQUv7UcyeRAy2t1OKd19PwKuRQj/rB5xxtykXmq6
         BnxJNoiATimbFLp3S1nV089g2k8O63isAOW2VHgOfnyXKlDMVDQ91mtoUbDPcX8TtpXs
         /VV1438jRZekQjCRlrfzZFabBA/FioUw1Ftbw7h/U/Wt/+VUZPAv4fJbfcvahhMHr7n4
         Xl2BPS8LSLW5CyqNzifqh8hHcDchOET/bTqxkntSwy2AkrGOzpgxfSlvq4P/lhfCfSYT
         Y1xhm83p2KruEGc7RaKhka+mn8APG0867t47nuQ6Wt60j/k+KQotQ7c0HYr5a7VnSyfC
         ovsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id h26si7635wml.0.2021.10.18.10.46.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 10:46:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228272018"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; 
   d="scan'208";a="228272018"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 10:46:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; 
   d="scan'208";a="526357000"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 10:46:24 -0700
Date: Mon, 18 Oct 2021 10:54:20 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
Message-ID: <20211018175420.GA446414@alison-desk>
References: <20211014174207.GA426328@alison-desk>
 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>

On Mon, Oct 18, 2021 at 10:59:42AM +0100, Karolina Drobnik wrote:
> Hi Alison,
> 
> I updated the `get_maintainer.pl` code section and split it up a bit,
> hope it's fine. Additionally, I decided to extract the note on
> `vc04_services` so it's more visible and add a comment on including the
> outreachy list (as a reminder).
> 
> One thing - should I use double-spaces while editing this wiki? I see
> they're used there, I added some in but I wouldn't be surprised if I
> missed some.

Is that the double spaces between sentences you are referring too?
HA HA - that shows that this writing is dated, because double space
between sentences, use to be the standard, but is not anymore ;)

As you change things, certainly get rid of those.

> 
> Please let me know what do you think about these changes.
> 
> 
> Thanks,
> Karolina
> 
> ----------------------------------------------------------------------
> 
> <<Anchor(submit_a_patch)>>
> = Submit a patch =
> 
> The first step to sending a patch is to figure out who to send it to. 
> For this, you need to find the maintainer of the code you're patching,
> and Cc the correct mailing list.  If you simply send it off to LKML, it
> will get ignored. 

Perhaps explain what LKML is, include it's full address.


> The perl script in the kernel source directory
> ``scripts/get_maintainer.pl`` will either take a git commit or a file,
> and tell you who to send your patch to:
> 
> {{{
> $ git show --pretty=oneline --abbrev-commit HEAD
> a490e2e84eda staging: vt6655: Rename byPreambleType field
> diff --git a/drivers/staging/vt6655/baseband.c
> b/drivers/staging/vt6655/baseband.c
> index 0bae35af6e0f..5efca92f1f18 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1764,7 +1764,7 @@ void vnt_get_phy_field(struct vnt_private *priv,
> u32 frame_length,
>         u32 count = 0;
>         u32 tmp;
>         int ext_bit;
> -       u8 preamble_type = priv->byPreambleType;
> +       u8 preamble_type = priv->preamble_type;
>  
>         bit_count = frame_length * 8;
>         ext_bit = false;
> 
> $ git show HEAD | perl scripts/get_maintainer.pl --separator , --
> nokeywords --nogit --nogit-fallback --norolestats
> Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
> }}}
> 
> It is also possible to get a list of maintainers for a particular file
> (`-f` option):
> 
> {{{
> $ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --
> nogit-fallback --norolestats -f drivers/staging/vt6655/baseband.c 
> Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
> }}}
> 
> The many arguments to get_maintainer.pl cause the output to be in the
> form of a comma-separated list and cause only the actual maintainers of
> the affected files to be included. However, for IIO drivers, please
> also include linux-iio@vger.kernel.org.  For Outreachy patches,
> remember to include the outreachy mailing list in your `To:` field as
> well.
> 
> '''Important:''' The maintainers of staging/vc04_services would prefer

I think I'm going to pounce on the word 'prefer' and say not to include
this comment. I don't get the inconvenience of Outreachy patches for
2 contribution periods (2 months) per year, to warrant a special case,
when a mail filter could achieve same result.

FYI: Outreachy use to not send patches to maintainers during Outreachy,
but changed that policy after maintainers asked for visibility into
all patches, even though it was GregKH that was the one applying them.

> '''not''' to be CCd on Outreachy patches. Please CC Greg explicitly on
> these patches: Greg KH <gregkh@linuxfoundation.org>.

wrt GregKH - 
If the code is in drivers/staging, I believe gregkh automatically
sees all patches because the patches go to linux-staging list.
Is there really a need to do special handling with GregKH?

> 
> The second step to submitting a patch is to create and send a patch as
> an email.  You cannot send patches as attachments to the mailing list.
> Instead, you will have to craft a special email, and send the patch
> inline.
> 
> There are two ways to send a patch.  Either way is correct, and we
> suggest you get comfortable with sending patches both ways.  We suggest
> sending your first patch to yourself, in order to make sure it works.
> 



> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel%40gmail.com.

