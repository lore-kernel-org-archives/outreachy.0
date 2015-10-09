X-GM-THRID: 6202672545102036992
X-Received: by 10.66.255.42 with SMTP id an10mr9331527pad.40.1444369256253;
        Thu, 08 Oct 2015 22:40:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.116 with SMTP id u107ls1329985qgd.54.gmail; Thu, 08 Oct
 2015 22:40:55 -0700 (PDT)
X-Received: by 10.129.123.85 with SMTP id w82mr9513678ywc.39.1444369255602;
        Thu, 08 Oct 2015 22:40:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si5569807pac.2.2015.10.08.22.40.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 22:40:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ex6so76420945pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 22:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hJPPKU17ZZ3IwVd0oHY+kvaAEQGoHzJQVyxS6pHdyKw=;
        b=ZUlU4ESjxtIPjiIzonMPZZ9xybKtK7PhMLEORA9vBe4V8WetzMuHo8Ek23m6myy0lf
         h57pyvK90YCkSPxkBvLuqp07Z5VssgJXB4l6pl8Fy2brHqSVWnHpaH2fVeNW7ZwwJ/9C
         zeB/5pMzjUc/KoGXsy6Yk2A9U7MVLZcdJ5oDvs/RJCyIZ8NTDRvU23tp0hkjgS8hOsh2
         RGT19zF5Ura6JTUm6RuRuiSzlaeNnagyqDoguokTIy9c3ZFlna/xBzcFObYA1WBEaVRw
         vZL7m5UdyERqAI0+ObIZPYyusWfEXvb0fq6KkGb1/Dae8HSaui26iM/Rxwun4ukvgSTQ
         LBZw==
X-Received: by 10.68.171.37 with SMTP id ar5mr13158729pbc.39.1444369255330;
        Thu, 08 Oct 2015 22:40:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id gd2sm48915534pbb.41.2015.10.08.22.40.53
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 22:40:54 -0700 (PDT)
Date: Fri, 9 Oct 2015 11:10:44 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/9] staging: iio: adc: properly
 indent to match open paranthesis
Message-ID: <20151009054044.GA6059@sudip-pc>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
 <5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com>
 <20151008045556.GA3294@sudip-pc>
 <alpine.DEB.2.10.1510080639430.2626@hadrien>
 <CAHWJYFkdtznoTwn_UNd-U09BmfYAkiaHZcmqyk0J9KRcJp3xWw@mail.gmail.com>
 <alpine.DEB.2.10.1510080748240.2559@hadrien>
 <CAHWJYFmWyZiwCHVW0qhex-NLTZudALt3j1fvf3UikYXpeXXHBQ@mail.gmail.com>
 <CAHWJYF=pbh6txTBpJdiPJiQuUmnykfG4ECR0FMw7NXpgZ5VHuA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHWJYF=pbh6txTBpJdiPJiQuUmnykfG4ECR0FMw7NXpgZ5VHuA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 08, 2015 at 09:15:04PM +0300, Ioana Ciornei wrote:
> On Thu, Oct 8, 2015 at 9:52 AM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> > On Thu, Oct 8, 2015 at 9:49 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>
> >>
> >> On Thu, 8 Oct 2015, Ioana Ciornei wrote:
> >>
> >>> On Thu, Oct 8, 2015 at 8:40 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>> >
> >>> >
> >>> > On Thu, 8 Oct 2015, Sudip Mukherjee wrote:
> >>> >
> >>> >> On Wed, Oct 07, 2015 at 09:13:40PM +0300, Ioana Ciornei wrote:
<snip>
> >>
> 
> I had a better look at this particular patch and I am still in doubt
> about this one.
> If a indent to match the open brackets I do not see a possible way to
> not cross the 80 characters limit.
> 
> I had a try with Sudip's sugestion to put the return type of a
> function on a separate line but that does not apply to all cases.
> What should I do in this situation? It is better to just leave the
> changes that do not introduce warnings or just drop the patch?

I just did one as an example to show you one more way of keeping the
lines in limit. But for other cases where there is no way then you can
either rename the variables (if variable names are long) or you can
refactor the code so that indention is fixed along with that line length
is also fixed and lastly if there is no possible way then I guess we
should chose the one which improves readability.

regards
sudip

