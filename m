X-GM-THRID: 6465205340686254080
X-Received: by 10.159.55.39 with SMTP id z36mr3428333uad.35.1505929715934;
        Wed, 20 Sep 2017 10:48:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.129.98 with SMTP id 89ls234734plb.16.gmail; Wed, 20 Sep
 2017 10:48:35 -0700 (PDT)
X-Received: by 10.99.60.90 with SMTP id i26mr1752723pgn.127.1505929714991;
        Wed, 20 Sep 2017 10:48:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505929714; cv=none;
        d=google.com; s=arc-20160816;
        b=RS7WEfCp2wsZF6+bJZ5WGIg7MuMe5xJbz8Cq189NWGYJWJem1qPXGHKGKTstY/vU27
         DGfk0+mxBRLZLe/oZSWoy+dhnU+BJK788g4aBdFbswG1JSpTFnoTBfvNwxZ6WGCyVCFE
         eWyEb55O//zCn8/F9x18U5e7S5LBZjf9g5q41PrcRvnysArTg1yzqRy6JhLlEjVpbtUy
         IEjGBCBoHtO60qxpkd6uJrKFlRfwgYrgHoAyMIzIWYRdU+gh0wtP2tD013HGYoXAA95B
         gfPRFfyGOJEz7/lxhhfMtBt/gVMSa0v3ToGmMXoYcbu6QiQTpYMUyFeLp1nWxrDFIKfV
         VxuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=+sdIobx7DQv0v5BTXlAq8/bQf265hremmqPuMS0jMXk=;
        b=szCdBOQoOEdPhiD3+qCtTWE/oqdGqnA5YwLd+J05SHjiTMREHw57VQw7BJvcLEV2dY
         9f6o3CD3huLp3xPHG/zsf8MGgM+aL/8bqIfA+RdZjh3qZpI1RlnK65GhgnLu/D3BlAlB
         oCqprMOkGkX56lJQ46bu4pTpsBGj+aB5/9+0oqhGTbGUPhBw/fcbYU+BkqIimH8Wu4Qi
         I6NiJq7z6MnReGBXM/PxDmDlJHekS4DXjfHEBToBzZPYYFJLQ1uh/zbkbqDFUTXZihzu
         y2vrCsmJZZ4+eIZKV0pQh6xbObjmjK5B97Ht3T0EEA7W9APIYbJuabqnGXzOXPlyEfMN
         vJNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=U5rxmahS;
       spf=neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id d207si602072pfd.16.2017.09.20.10.48.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 10:48:34 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=U5rxmahS;
       spf=neutral (google.com: 2607:f8b0:400e:c05::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-pg0-x243.google.com with SMTP id i130so2025306pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 10:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=+sdIobx7DQv0v5BTXlAq8/bQf265hremmqPuMS0jMXk=;
        b=U5rxmahSlNckMxaGS3ipEWt/lgygiQRxAcdSePfLoJAqTVod5iodTzJG50MAF+0doY
         eOaKHZc8yzoMLoFP8XL55RlrgzBRzG5F04WSK4Php8qVDA7OrcgcN8ZeZ0FoXlX/81uD
         3RGkWNlU9lj2ZQn4vhRhu7P10ik6E7Y84Tv7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=+sdIobx7DQv0v5BTXlAq8/bQf265hremmqPuMS0jMXk=;
        b=WE3z+5+eZro4McXXTxcTzlcSLhinH949b1+3ugwpm9uHTN9si5vG0HaE2g1cpMUpgY
         e5ncG/n40WK1CSBGQtO+lNgsZFHd6iyDMCrz/qplhNDJ8CwB418YW9XP7w7tDWRCJzia
         yWYMlHgu2/K9N4deFJoCW5upuGbE0h5d6E+Q+qyluYaAYaMDCSKjKXqYHqxm4EWhGcY4
         SS7dsm+VMWGqRYbdmVYK+k64j9X5mRyt1LQm47Q7cTwems9fsk1MrX1QDPDPOeT+pDjh
         gQ0IrwG2msbv78U3p5c+myjSozPqmvu2fls3Z38IBgu+P1FVTi/mCkmSTfni8V8ybNZ4
         Kxpw==
X-Gm-Message-State: AHPjjUhn/a229rVg34IWcAgSOQMg+5fIAj6p5J9IIriC5H9PgYMi6Oao
	jN8r0GZyTjHgnL56VAfhVhqQ3g==
X-Google-Smtp-Source: AOwi7QDsBPWvChpuW0V8QwC0jHIJs4iobXZGHo0W3AgcVL6A6zGZ7Aosa4IxAEwrc8/LaRxe1mBDvA==
X-Received: by 10.99.112.4 with SMTP id l4mr3019687pgc.216.1505929714659;
        Wed, 20 Sep 2017 10:48:34 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from dvetter-linux.ger.corp.intel.com ([2620:0:1000:fd28:4365:e6dc:fa5b:aee7])
        by smtp.gmail.com with ESMTPSA id x128sm7028228pgb.6.2017.09.20.10.48.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Sep 2017 10:48:33 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 20 Sep 2017 19:48:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Vetter, Daniel" <daniel.vetter@intel.com>
Cc: "meghana.madhyastha@gmail.com" <meghana.madhyastha@gmail.com>,
	"jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
	"julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
	"seanpaul@chromium.org" <seanpaul@chromium.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] GPU: DRM: drm_agpsupport.c: Code
 cleanup
Message-ID: <20170920174828.GA25248@dvetter-linux.ger.corp.intel.com>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com>
 <alpine.DEB.2.20.1709131352550.26484@hadrien>
 <87wp52iwl0.fsf@nikula.org>
 <1505775934.6581.6.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1505775934.6581.6.camel@intel.com>
X-Operating-System: Linux dvetter-linux.ger.corp.intel.com
 4.12.9-200.fc25.x86_64 
User-Agent: Mutt/1.8.3 (2017-05-23)

On Mon, Sep 18, 2017 at 11:05:39PM +0000, Vetter, Daniel wrote:
> On Wed, 2017-09-13 at 15:58 +0300, Jani Nikula wrote:
> > On Wed, 13 Sep 2017, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > On Wed, 13 Sep 2017, Meghana Madhyastha wrote:
> > > 
> > > > These patches fix the checkpath warnings and errors
> > > > in drm_agpsupport.c
> > > > 
> > > > Meghana Madhyastha (3):
> > > > � GPU: DRM: Moved EXPORT_SYMBOL so that it immediately followed
> > > > its
> > > > ����function
> > > > � GPU: DRM: Replace "foo * bar" with "foo *bar"
> > > > � GPU: DRM: Remove assignment in if condition
> > > > 
> > > > �drivers/gpu/drm/drm_agpsupport.c | 41 ++++++++++++++++++++++--
> > > > ----------------
> > 
> > Please try 'git log --oneline -- drivers/gpu/drm/drm_agpsupport.c'
> > and
> > observe the commit subject prefix used. Please try to follow the
> > style
> > in the area you're changing, not some generic rules.
> > 
> > > > �1 file changed, 23 insertions(+), 18 deletions(-)
> > > 
> > > Are the DRM people going to pick this up?��Because Greg will
> > > not.��If you
> > > do something that is outside staging at a mentor's suggestion it
> > > could be
> > > good to make explicit that the mentor will make sure that the patch
> > > will
> > > be applied.
> > 
> > I'm not generally fond of pure checkpatch fixes, but patch 3 alone I
> > want enough to pick them all up. ;)
> > 
> > But please do submit the series to dri-devel@lists.freedesktop.org.
> > As a
> > matter of policy, we don't apply patches not posted to our subsystem
> > mailing list.
> 
> Yeah, stuff needs to go through dri-devel when it's a drm patch (or
> anything else in drivers/gpu). That's why we don't recommend it for the
> very first patch (I guess I should update the text a bit, but I'm
> travelling and don't have login creds nearby).

Hm, not all of these landed. Haneen, can you pls resend the remaining
patches with dri-devel (and maintainers, per scripts/get_maintainer.pl) on
cc?

Thanks, Daniel


> -Daniel
> 
> > The scripts/get_maintainer.pl script will help you with the lists,
> > but
> > do use discretion. The script is sometimes misguided, adding *way*
> > too
> > many lists and people. Just the main subsystem list and
> > supporters/maintainers are usually enough.
> > 
> > 
> > Thanks,
> > Jani.
> > 
> > 
> Intel Semiconductor AG
> Registered No. 020.30.913.786-7
> Registered Office: Badenerstrasse 549, 8048 Zurich, Switzerland
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505775934.6581.6.camel%40intel.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

