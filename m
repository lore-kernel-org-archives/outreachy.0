X-GM-THRID: 6617179960834523136
X-Received: by 2002:a02:3b58:: with SMTP id i24-v6mr7880342jaf.25.1540682269033;
        Sat, 27 Oct 2018 16:17:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f80b:: with SMTP id o11-v6ls1631190ioh.9.gmail; Sat, 27
 Oct 2018 16:17:48 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dNua7tbKyR0RnXkrAwNXXeCG51kEQBpItwnbDlhw9nnEpRcncc1cvcIVgrisqu9AyvRwsZ
X-Received: by 2002:a6b:fb18:: with SMTP id h24-v6mr7629110iog.17.1540682268055;
        Sat, 27 Oct 2018 16:17:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540682267; cv=pass;
        d=google.com; s=arc-20160816;
        b=QSbzu34Yw3+mUni2a7gCNrVDwca6N35fSHqPSQE3i+YYn9u3hvsrI7Ux/N0M9BbK2m
         6zIspxnQ1nXm+2u2BqTkMfCd8+8COKB7pwSpo2gT4bB3/IaPjLfLwkAc2xEwSuVRNbTU
         Z2/6a3ODbWEr5tri5c3vZsNWAqsZ+C7jccS2tZVdFc2DN7ElWug/SAawyuuFx/2R8tYx
         ySxADcHFX2y2oOFOTDfB9w9V/pT+qSOfxVQQY02/xEwOl02vOdPztCV9ED7eQoKmnVO1
         fv0MKA5NJQH4DETyvrlhDlF0QNpM9j5yTfRRIQ5uK9LwIi32zRQ0C0F/mO5+eSRePbcp
         C42Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=xhDZrpuQZj+GWb1kBrN8SsXorzPXEzUB0uqGK56tt1g=;
        b=FLZnT0+ztoRItRX+32WXhWVMQoF7N7CEgFpx4sAr6fOfoTSDjf3lfeJX2B3ZaxH6x+
         +UFjLb068Cwt2yVUqVn3n7nRYT+WknlJTehImIRBa3g0typ+QvsgJM0Nj43nn7g28esH
         021zMR1ajXd+PLmt5lhD1bG/1tsN86tVnOV00uu9UIeOOr1DiI1TtLTvMYDhq/rPsz5A
         w85ekOlHEP4cLxG8jIMQQUHferxLvpSGv3CYiayIUThj87qesCR1bwEn9ZBKpDbDOPkm
         ijL1naUUeRUvpegniJ4rWf6HJj7va7ytgxr0Xw9SbjSPhndBGWCCaPosLTz+7nD5e3A1
         rxXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BRLweMK5;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [31.186.226.243])
        by gmr-mx.google.com with ESMTPS id n14-v6si446342iom.0.2018.10.27.16.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 16:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) client-ip=31.186.226.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BRLweMK5;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540682264; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=OjF+gUBL0Qy8tdY9qF3Rdr8fOBV129P/3UEs7VuKvXFRGlN7aj0fO03L0FLWepTPAl2QoucKz1yC7gLe8z1em0BNjeGRz70jxYGP0+AhS2cZV7nGhPJF1hnT53xRrT46hQSEKWjyGWTEJjLd9eM5xG8Wg5und8LMYo9AolwyjYs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540682264; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=xhDZrpuQZj+GWb1kBrN8SsXorzPXEzUB0uqGK56tt1g=; 
	b=A1TvIBtNCTwXXz60hzcEyUJaQHtEKgjoveQrE5sUgAbZGsCO5Cez3ryfdFw8nvOCX5iZKcXi0VrcJQAHhvXjeSfSc1C3Su2/YMJ4UqGKDvQkuvvdgImkw/oLIR+UwNwPScZQdkiFrCBXqrir00ePhS/P7CunUmWpADSHpJas/Gg=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540682264;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; l=366;
	bh=xhDZrpuQZj+GWb1kBrN8SsXorzPXEzUB0uqGK56tt1g=;
	b=BRLweMK5qe9cVAiHNd1d/9dQslhz+/YCqNur0NO8LfM7V53L5sUIlUASiaea1QGw
	UWVyU+p5CUN1PxxiJ1V8057p/lPiLNnPwCYrR5JgGRTAC7qwP64+ticoBbGNYp0GuWM
	rNz8tBsf7pVT4KiSZ1p7uergUBQvDj98QmnHaJ/0=
Received: from kvasir.local (90.252.91.235 [90.252.91.235]) by mx.zoho.eu
	with SMTPS id 1540682263845959.1630639675296; Sun, 28 Oct 2018 01:17:43 +0200 (CEST)
Date: Sun, 28 Oct 2018 00:17:42 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Subject: FirstPatch Wiki Change
Message-ID: <20181027231742.GA11614@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Hi all! 

I wanted to added a few changed to the FirstPatch Outreachy
Kernelnewbies wiki but I get the option that the page is immutable. On
top of that, when I am choosing Load/Save from the menu, I don't get the
whole page 'source' but a very tiny version of it.

Anyone knows how could I edit and send my Wiki patch over to you? Thank
you for the help :) 



