X-GM-THRID: 6333039689396649984
X-Received: by 10.107.130.144 with SMTP id m16mr3563002ioi.41.1474785885077;
        Sat, 24 Sep 2016 23:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.112 with SMTP id 103ls11595596oti.31.gmail; Sat, 24 Sep
 2016 23:44:44 -0700 (PDT)
X-Received: by 10.237.45.39 with SMTP id h36mr3903630qtd.14.1474785884679;
        Sat, 24 Sep 2016 23:44:44 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si3304493par.0.2016.09.24.23.44.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 23:44:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so7375057pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 23:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cXZYOmiET1d9dWWqPucs1fU6Tjib9o8jjWoDHuQehRg=;
        b=Z7HFkmFfFxAPqt/Q5+1C59FoHKqdn6tPlqF5fz1WrwUsR44JbKpJSkny7spJrdCmlL
         YIL9vkjBUMCtNVcD4sNssd/fQ5yIB8hdaLSnqnmnN8WsI7W0vPYsp5Ol6csBvILURH3I
         gMYUfoWb4OKSxWLFG0cGwc+NPuKGpenvty4tj9bBqt65//ndTavvuCE1XVwl7Xz2lYso
         Fk0lnYxh90Z8318QJ/AvlN4pmu847m1YoxhNRJWxf9LDVadpMHU8iOFJe29vTCRTwiwP
         asdCikeYzvlB+oT6jyI3UYQYdJI/q6wKcvuwjWRp/hxWzPxYI2kqltIR/Trxr0sKeLTk
         VePQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cXZYOmiET1d9dWWqPucs1fU6Tjib9o8jjWoDHuQehRg=;
        b=iVS+Jul9IfN1HJGjRz35Ft6y+q8zWAoi0C8WloQM/UpqPE0Ld676TcdXNoM7P6LiGS
         if4udx9opqBuPu1djnMBt1/cjv5riKn0ZZ28C0Dy7b0Lrq/kqCoRoOklGBV9vm2kqQWG
         69mY+bJUlJg5+P3e+lh13hVtysQpQeRxOpjjOEr7DJKdMgR9yjRiZQ4Kmm+FUcwXqYX2
         YxQRZQQMJWjXQvkLhU63MzlO4WIM487Y3fI9JIO/eVqT8sTd+O18gi7XaShCi0hxBkSY
         bV4HCjHKG+sKpW9x//9YGdUDGGxHkA4oW+C+aKINyp02TqKlAARHtGOLATOiBqO6wsVA
         n+jg==
X-Gm-Message-State: AE9vXwPtHs7o+o5tsmrYmXt9c53SelrQ0np3Yjo6IPVCg7A8Tsmy/oCdSUO3iBJDda6Ttg==
X-Received: by 10.98.129.131 with SMTP id t125mr27690942pfd.157.1474785884471;
        Sat, 24 Sep 2016 23:44:44 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id u1sm22029992pfb.62.2016.09.24.23.44.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 23:44:44 -0700 (PDT)
Date: Sat, 24 Sep 2016 23:44:42 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: julia.lawall@lip6.fr, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [SMALL TASK 2] Doubts, approach and sample
 code
Message-ID: <20160925064441.GB9644@d830.WORKGROUP>
References: <20160922062817.GA11923@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160922062817.GA11923@toblerone>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 22, 2016 at 11:58:17AM +0530, Rehas Sachdeva wrote:
> Hello
> 
> I have made an inital attempt on small task 2 found here:
> https://kernelnewbies.org/JuliaLawall/#head-64863b6a2bfaec7448a8755a3430b311d2c0ce7d
> 
> This is the code I have written:
> http://pastebin.com/raw/uS4JAcWC
> 
> This is the sample diff I have tested the code on:
> http://pastebin.com/raw/h3PMSuae
> 
> Approach:
> 1. Grep out the names of the files modified by pattern '--- a'.
> 2. make the files and use stat to get total size.
> 3. Apply the patch and repeat procedure to get total size.
> 
> Doubts:
> 1. whether my assumptions of patch_file and dir paths are correct.
> 2. whether the method to get the files modified is foolproof.
> 
> Please check my approach and suggest ways of improving it.
> 
> Once the logic is approved, I would like to work on error handling, refining
> the code including de-duplication and any other necessary changes.
> 
> Thanks for your time.
> 
> Rehas

Hi Rehas,
Sorry, no technical answer from me, just wondering what's up with the
pastebin?  Sayli just used it also, and I had to jump out of mutt to
see her error message.  If I was going to comment on the code you put in
the pastebin, how do i do that inline? 
alisons



> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922062817.GA11923%40toblerone.
> For more options, visit https://groups.google.com/d/optout.

