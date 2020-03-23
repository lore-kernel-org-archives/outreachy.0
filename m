X-GM-THRID: 6807521221589073920
X-Received: by 2002:adf:9465:: with SMTP id 92mr33111635wrq.122.1585005613267;
        Mon, 23 Mar 2020 16:20:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls2719342wrp.6.gmail; Mon, 23 Mar
 2020 16:20:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtP8mHG5rP55RTXa5GDsOzq/pphGgAZYEZ0Pth+oop5QF+WV0RLtXiSPR0KOIHjpqAOxpL5
X-Received: by 2002:adf:fe03:: with SMTP id n3mr31479272wrr.266.1585005612331;
        Mon, 23 Mar 2020 16:20:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585005612; cv=none;
        d=google.com; s=arc-20160816;
        b=OUzBju4t7Mr3QqakbLiAwAqNVaZkgzZcGkEgO7cLhpy1o6XEX8FRAFiUe6u3mJiy7O
         1/B6kPEW0ud1xaDLdvQuWGQILkmQbI0bBsQonlRt0cIX8Rk8EFrMG/dI9t5AK39Qbp2G
         O77uIV2TXhR6LEeDi7DwXehWxfChIJQxGlmk+Kz6Avap4ia+6F5RiFdEEkiFWsxuBhgN
         lJx3PKsInCJIm0/RiU/zqqmi5CVHUpDeG46NQdap7iIpkEXT7Tz/nZCbtCYLFE1leXdZ
         BGl9AkCazmFoCfC/B0Is+YtsMBUNq11v/NE/b1xtMJniBaR4FzhzukjlIag0SKVN/HhB
         +8eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=9OxOxCz8Hbn5LU1ObeeoNzdhwfIPRXz5cyoDh8lvMW8=;
        b=PVtBV+Lew8wJ7/DCGVYXkEY2iEf6Cgff5gZ+NHHN6g9Zm/rxRC0buCZwp1eZzmRVYh
         M2fsQ+k3fNe4zFlueZreb3vkZ31mkhe5bATbcaLq4RYcRCj9JAwJy/C22uFp/lQg22MW
         OEzOrZQIi6W1lDBvMo9eqrTWGG1wtltMMhbo4j1GMki/saMXBKXf75nPuMF5wTQL2x3n
         zy3xAkoHV7Tf0eI0JESndyiM69ZA/P0Sota0JTYKRSPiO+YhdOaL0C3nydV3m7Lp2QWD
         QqhfZzddgez6ZhW0zw+65wWNaES2TFrTp2GKOgv45LwXz5UgLT0//VZ8FeS15un0NK4H
         zv0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id q205si81387wme.4.2020.03.23.16.20.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:20:12 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id B09D9E321;
	Tue, 24 Mar 2020 00:20:11 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zCExjdCn-fTa; Tue, 24 Mar 2020 00:20:10 +0100 (CET)
Received: from function.home (unknown [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 7E040D546;
	Tue, 24 Mar 2020 00:20:10 +0100 (CET)
Received: from samy by function.home with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jGWMb-006QS1-95; Tue, 24 Mar 2020 00:20:09 +0100
Date: Tue, 24 Mar 2020 00:20:09 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/3] Staging: speakup: Avoid
 multiple assignments.
Message-ID: <20200323232009.o7ibnz3b7pv52pkl@function>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
 <b92dd931a07afcd2bcac397387130ffdc3c46223.1584997290.git.jane.pnx9@gmail.com>
 <20200323221342.pdwwo55nu73kgcpl@function>
 <a0fb888ec415ab0ac4aa8900f4e744d71599ecad.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0fb888ec415ab0ac4aa8900f4e744d71599ecad.camel@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Sam Muhammed, le lun. 23 mars 2020 19:13:16 -0400, a ecrit:
> On Mon, 2020-03-23 at 23:13 +0100, Samuel Thibault wrote:
> > Hello,
> > 
> > Sam Muhammed, le lun. 23 mars 2020 17:38:43 -0400, a ecrit:
> > > Modify the code to avoid multiple assignments by just
> > > doing the assignment in two steps.
> > 
> > The original version of the code is considered easier to read.
> > Yes, the tools say multiple assignments should be avoided, but that's
> > not a strict rule :)
> 
> Well yes! this got me a bit hesitant, but what got me encouraged to
> make this change is that i looked for patches for the same change in
> this driver and i found this commit:
> 
> 	f23519843b01fdc266dd70ca29ef0f0a54f8b064
> 
> which was applied for the same file main.c, so i thought this driver
> adopted this style, maintaining a common practice?

This is a quite different beast:

-               value = spk_lastkey = pad_chars[value];
+               value = pad_chars[value];
+               spk_lastkey = value;

there is not much in common between "value" and "spk_lastkey", and much
more in common between spk_lastkey and the other spk_* assignments
below.


> > > -	spk_x = spk_cx = vc->vc_x;
> > > -	spk_y = spk_cy = vc->vc_y;
> > > -	spk_pos = spk_cp = vc->vc_pos;
> > > +	spk_cx = vc->vc_x;
> > > +	spk_x = spk_cx;
> > > +	spk_cy = vc->vc_y;
> > > +	spk_y = spk_cy;
> > > +	spk_cp = vc->vc_pos;
> > > +	spk_pos = spk_cp;

Here, there is a lot in common between spk_x and spk_cx, the current
form makes it obvious that we are setting two x variables to vc_x. The
proposed form make its much less clear.

> should i revert this change and drop it from the patchset?

Please drop patch 1 from the 3 yes.

Samuel

