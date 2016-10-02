X-GM-THRID: 6335442483781042176
X-Received: by 10.200.50.246 with SMTP id a51mr5033701qtb.41.1475432739482;
        Sun, 02 Oct 2016 11:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.25 with SMTP id q25ls1110657otb.2.gmail; Sun, 02 Oct
 2016 11:25:39 -0700 (PDT)
X-Received: by 10.157.25.130 with SMTP id k2mr4905611otk.74.1475432739218;
        Sun, 02 Oct 2016 11:25:39 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z73si997176pfa.1.2016.10.02.11.25.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so7666481pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 11:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=c+8UszIUmrbTjIIPdNtQyjX0RI8k83AeNNBodaPRdrU=;
        b=ZtcF6aSlqa5ccbnxR5d+yiP1ez5YqyM4W12MhHYrl75LtdbjHzzAGddmlmC+F/vnvS
         U+QpeJMCJFpIYwG1lmVQeYmlqTHX6gfbKGHCHhUVCRr2t0Gyxey70JUzitb8qQnVQwyU
         zBb7kf2fURKT3uk/YAQZP4lJy+y4tf3/VvEYS5Zrv1bbd9dFONnCajiidrl9SBi/L+I/
         1RLPpkP1YoQTWFnkrr3TTceAWzSK2ZFpdqxA2bmcoMNiBceaLnOrDDOALhDsgxe/N734
         ju4uMmttMd7vV4zK9ZDVUdMkAoFNRi5jv8LCrcU0jAz9TZwF5RzGW0+9IvF3sX2DuQAF
         p0uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=c+8UszIUmrbTjIIPdNtQyjX0RI8k83AeNNBodaPRdrU=;
        b=HKutKMQbGaWNa5C4ST0VvNWrrAyw9BeXNZu+IcKtyClig+LUauOkageZtubjTjU5+L
         GAEqvGs507f39E53U9Oq327WPPxrgv1o69jFz9ZznmfB2ikdSitlkq53lPT9Ic04Csnf
         njlM11IwewWf+Iyhq3zmNb8rq04Xh89bKkGNKOALFo38N9uRmTUG9kFbPncyaH+SwyfC
         OPJVikA8UiAA4eaL18N072AC7euP6HBXdTKTtfteispDslfm1HSZCu0+M+BJWwL/Kmns
         LMXcEVCB3nH9kp3WAWuDkcT7d31ZsIFpxsXoSshy9XzVJ2OxhXQGUsfuGc6r7ffbedSD
         nypA==
X-Gm-Message-State: AA6/9Rk+N3mC2OHUHFv3fntEnkvEbOr6P8W8rETNRw5fpAvt+81YudH7QgairzYB8xUTSA==
X-Received: by 10.98.89.199 with SMTP id k68mr30776733pfj.72.1475432738980;
        Sun, 02 Oct 2016 11:25:38 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id c4sm41739783pab.5.2016.10.02.11.25.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 11:25:38 -0700 (PDT)
Date: Sun, 2 Oct 2016 11:25:36 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Greg KH <gregkh@linuxfoundation.org>,
	Jonathan Cameron <jic23@kernel.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 ] staging: iio: cdc: ad7150:
 add comment to mutex
Message-ID: <20161002182536.GB2819@d830.WORKGROUP>
References: <20161002153424.GA4211@life-desktop>
 <20161002154039.GB21118@kroah.com>
 <CAAbeOSuPu599ySH5Mm+VB3xx-j0UX25+Ztb2qVbqh8qnErFCKg@mail.gmail.com>
 <alpine.DEB.2.10.1610021751050.3327@hadrien>
 <CAAbeOSv3x=ef+CxeGk11hiTMaeiRdzqrEPgiyMfpxg0St2H-qw@mail.gmail.com>
 <20161002181631.GA2819@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002181631.GA2819@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

Anchal,

I got through the rest of the email and see that Jonathan, IIO
maintainer, may have little/no interest in picking these kind of
changes up.  It's time to look for other cleanups.

alisons

