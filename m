X-GM-THRID: 6615663139748839424
X-Received: by 2002:adf:eb0d:: with SMTP id s13-v6mr301504wrn.23.1540386380770;
        Wed, 24 Oct 2018 06:06:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:5d89:: with SMTP id r131-v6ls1113572wmb.14.gmail; Wed,
 24 Oct 2018 06:06:19 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dGs6ksTXKTpcyJUEsd2DzNVuF/n7TLc3wYT9oxYn3YlG3hRg0w5vj0Jf9cPRyCWgDm0/Sx
X-Received: by 2002:a1c:8ecb:: with SMTP id q194-v6mr317776wmd.11.1540386379747;
        Wed, 24 Oct 2018 06:06:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540386379; cv=none;
        d=google.com; s=arc-20160816;
        b=GVl7mPjoPK0YSTOP6FnazTJF71oQxWFvmLXP3CgD8id03z4DvpdXj1hP3GqF2wdhYn
         I1djoh+fjJEQZ2zJqFwmNCo576Fb2+pwADLYb6Zz8g/pA6DQrFfpobjml1rXv2I2Bw2z
         3+an6Qfb93A6TL8+g7sx2NqF01eN5drSdAGSHyafnakIPb1IodeXs+ycopOoHRrKJ4sD
         m7Pbi7GWKmaNclAlpXZfrR1K2k2W/hKyrpandVRIYLuZwQcTzzyvMOot5a8ZBu6x+UtJ
         y+5evURPMZluxs6qBqZguFWyxajO0P+IFGAXXdsyG4mNrveZJT7w1aFzixkvNUsA0Rxk
         e/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ynYiImn9nf60oB0P3i2tSzFJYxmXh13FmWepyuf4/5A=;
        b=lTICbjPeJ0qkftFeNf61uaoT4TjZpBHLlaKTXVRDplfEkWTWGdokkozJGCIlW2t999
         VlhdShEvnppRySHrHEUsmSwEOx2fgzKxqF94bZMYpQciATL4867mVA6qSXigLP481bAe
         zCPX0xb0+bBcatPLnWy55wUqEIdyJJeap++lx3k95hgbR+8k2UuvDUlyBuKm5PAYFHiZ
         CSCf9u3WLo8EKlf8cGMXSoTBe/gC3iZeFZm9eV0NORAuGPMRujFi8X8qI4Nr2/Q3vIc2
         FmOmQH+W4I9RQVcXVo5SwFHar/U/paBykz1+RgBN6v23ttkxRaMPB+zD3T+vqh7X2BNd
         b5pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h188-v6si162460wmg.2.2018.10.24.06.06.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 06:06:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,420,1534802400"; 
   d="scan'208";a="352630606"
Received: from unknown (HELO hadrien) ([185.7.230.216])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2018 15:06:19 +0200
Date: Wed, 24 Oct 2018 14:06:18 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Russell King - ARM Linux <linux@armlinux.org.uk>
cc: Matthias Brugger <matthias.bgg@gmail.com>, 
    Kimberly Brown <kimbrownkd@gmail.com>, outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org, 
    NeilBrown <neil@brown.name>, 
    =?ISO-8859-15?Q?Christian_L=FCtke-Stetzkamp?= <christian@lkamp.de>, 
    linux-arm-kernel@lists.infradead.org, John Crispin <blogic@openwrt.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: mt7621-dma: Add braces
 around else branches
In-Reply-To: <20181024110745.GV30658@n2100.armlinux.org.uk>
Message-ID: <alpine.DEB.2.21.1810241404050.2371@hadrien>
References: <20181023211142.GA2661@v> <20181024045653.GA2864@v> <af4594cc-05c0-672c-d560-b50705ceaab3@gmail.com> <20181024110745.GV30658@n2100.armlinux.org.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 24 Oct 2018, Russell King - ARM Linux wrote:

> On Wed, Oct 24, 2018 at 12:45:44PM +0200, Matthias Brugger wrote:
> > Hi Kiberly,
> >
> > Thanks for adding all the emails in CC.
> > I would encourage you for your next patch to distinguish between CC and TO.
> > You should send your patch TO important maintainers in the get_maintainers.pl
> > list (as default, to all of them). If there is someone you really want to look
> > into the patch, then add him/her in TO as well.
> >
> > Put the rest (people and mailing lists) in CC. Why? Some people filter their
> > mails so that they can concentrate on the mails they got send directly and look
> > on mails they are in CC with lower priority (maybe not at all, because there are
> > too much?). So it is important to have the maintainers in the TO list and not in CC.
>
> +1
>
> I'm glad that there's someone else in the Linux community that agrees
> with me on this point, and is willing to speak out about it.

If it's an important point, perhaps it should be mentioned in
submitting-patches.rst?  There is a mention of the Cc tag, but no
indication of who to put in CC.

julia

