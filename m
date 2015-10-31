X-GM-THRID: 6209266424669536256
X-Received: by 10.66.246.234 with SMTP id xz10mr9520109pac.10.1446281620626;
        Sat, 31 Oct 2015 01:53:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.103 with SMTP id l100ls862881iod.22.gmail; Sat, 31 Oct
 2015 01:53:40 -0700 (PDT)
X-Received: by 10.68.195.197 with SMTP id ig5mr9773838pbc.4.1446281620118;
        Sat, 31 Oct 2015 01:53:40 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si1124314pbb.0.2015.10.31.01.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy1so90614129pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 01:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=WBi9C130hKBy/1MdXHMCHS1tYF6zqiYPhwPpO6+fr6E=;
        b=cAM2hX5awhLu/Y8mZFgoHpPlUihHufBmB8BhVClOhVcy3o4g2Kms616KPh8yM1q13C
         GdB9PkBiiXcDf3a5UXWz0UQCekKJe/tntM1eUt/iUXQr6AlAbxxc9iJW6T+1JX8SqrNX
         cjG6wiO7NGAG+a860sf1vbig1iVeBuNqT0KMcAL2yHB3pJmhHA4zp6FKeYmPF/EUlbpE
         FkN/g5Ezq8BsK7OU2MWjilPXt0ysYY2b0SS2QErpmpOT0AKa62YbfnuneK1p6MgAU6Dv
         kDD/5w3YhgbGu6cUoIVVjU6R9rskOVSsOj5VZkqQVykMWme35cus6In31lupFH2h40m9
         SSfA==
X-Received: by 10.66.144.130 with SMTP id sm2mr14086827pab.105.1446281620019;
        Sat, 31 Oct 2015 01:53:40 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.154])
        by smtp.gmail.com with ESMTPSA id qb7sm12555493pab.47.2015.10.31.01.53.39
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 01:53:39 -0700 (PDT)
Date: Sat, 31 Oct 2015 16:53:31 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: mt29f_spinand: Replace
 udelay function with usleep_range
Message-ID: <20151031085329.GA25133@Socrates-Mint>
Mail-Followup-To: Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel@googlegroups.com
References: <1445707491-28304-1-git-send-email-eraretuya@gmail.com>
 <5775905.RiZkvh7Klu@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5775905.RiZkvh7Klu@wuerfel>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 10:32:40PM +0100, Arnd Bergmann wrote:
> On Sunday 25 October 2015 01:24:51 Eva Rachel Retuya wrote:
> > Use 'usleep_range' instead of 'udelay' to elapse time. For
> > spinand_reset, define the upper limit by a factor of 2 to keep the wait
> > short while still allowing a "good enough" range for wakeup. Define the
> > range 250us - 1ms for spinand_cmdfunc to provide enough leeway before
> > issuing spinand_reset. Checkpatch found this issue.
> > 
> > CHECK: usleep_range is preferred over udelay; see
> > Documentation/timers/timers-howto.txt
> 
> You are missing here an explanation about how you verified that the
> conversion is safe: Are you sure that the spinand_reset() function
> is never called from "atomic" context?
> 
> 	Arnd

Please correct me if I'm wrong. I look up similar patches before this
and scanned the code taking into consideration what was discussed. In
this case, I didn't see any indication that it is not allowed to sleep
and also by looking at the probe function containing "devm_kzalloc(..., GFP_KERNEL). The caller/s of the reset function does not indicate whether it is on "lock status" and from my analysis, the use of "udelay()" simply wants to elapse time before proceeding.

Do you think it operates in atomic context?

Eva

