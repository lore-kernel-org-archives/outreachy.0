X-GM-THRID: 6336586801480728576
X-Received: by 10.66.155.202 with SMTP id vy10mr4062851pab.54.1476583476904;
        Sat, 15 Oct 2016 19:04:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.124 with SMTP id l57ls279101ote.44.gmail; Sat, 15 Oct
 2016 19:04:36 -0700 (PDT)
X-Received: by 10.31.33.79 with SMTP id h76mr5046118vkh.27.1476583476565;
        Sat, 15 Oct 2016 19:04:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si4054345pab.2.2016.10.15.19.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 19:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id s8so10078495pfj.2
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 19:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CKkO5p/ASZGweBlE9DI6/AoGxcYTqIF/e4Wz3+9uLF4=;
        b=hzXZSMFlQnt94qIYqulqd4pq/0CsLe60ICsqQVNx6gogD/7mfqdFbk/aj4s3IsA+hY
         xKVCJ67piRLkWPeb8GEFQaWleHaTwlxvl8B99OylkHwuGy4rD6NGvuDQ1bESOhXbFzSM
         LVVOmH2LCMUwc65XriKQ8lGdkITLny6zIFzZqVrmZ/rSPzAOMQ2C8Fk8kf9GSc29x/pt
         Taeha5+ZGJqGF060DYAI/tsvwgf9JAfvg0Axuw7kG7borqoU96oPrB2g6N24TiWDm3wt
         6FMe+9tOdWzMvjoai+10y2j9Ds+tNNA4ueZzK0NgnNX9Q82Bw9XKPkxzQExc0GFcl4TP
         McCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=CKkO5p/ASZGweBlE9DI6/AoGxcYTqIF/e4Wz3+9uLF4=;
        b=bQM9C9zlmNbfoAMLjxJHH8L6r5SL1fgobCLrvaxn8jpSRQgFdG/8Y2K5X/SwclUHDS
         /ZG/d5vfkpR5JphYydtgliQF8IoLPF++JYQRi9h1WjxqBJr65qiR/zs7dEdv0+PjiVn3
         NQ6NdvVL37qywJfn4shoCbcnHAUOt5jQCKTokM/oipLzTEb2+8HzlR5mKm5ka0ZuOlRr
         TGprIsLL14uOY8Vzt1aSa7I9dfK/Tcgg0FE9Qu9cPOCqRzgJgJ51JkmQydOzKYgtdmuW
         KEVMi3YPJlg0Lj2cqAafy+C+BN2D4w/79Ciberjf+yh+41YxNRnp5agCJta5aW5niWgI
         Xzvw==
X-Gm-Message-State: AA6/9RllKE36Dt5602DiNdpOxb1/BybrB3UVHR1Q6mBzGdxgH1QrM2wQjMbTU3A3l61Nhg==
X-Received: by 10.99.125.71 with SMTP id m7mr23417058pgn.58.1476583476333;
        Sat, 15 Oct 2016 19:04:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([103.14.62.226])
        by smtp.gmail.com with ESMTPSA id s6sm37687967pfg.46.2016.10.15.19.04.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 19:04:35 -0700 (PDT)
Date: Sun, 16 Oct 2016 10:04:27 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: Daniel Baluta <daniel.baluta@intel.com>,
	Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
Message-ID: <20161016020322.GA2406@Socrates-DK>
Mail-Followup-To: Elizabeth Ferdman <gnudevliz@gmail.com>,
	Daniel Baluta <daniel.baluta@intel.com>,
	Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
 <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
 <20161015210748.GA13776@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161015210748.GA13776@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi Liz,

On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth Ferdman wrote:
----massive snip----
> I think that running $ make -j2 && sudo make modules_install could solve
> this problem? If I can't do insmod can I just do modprobe?
> 

modprobe is OK to use.

Eva

> Thanks,
> Liz
> 
> > thanks,
> > Daniel.
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161015210748.GA13776%40localhost.
> For more options, visit https://groups.google.com/d/optout.

