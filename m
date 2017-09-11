X-GM-THRID: 6464167912849539072
X-Received: by 10.28.138.130 with SMTP id m124mr502723wmd.27.1505158456331;
        Mon, 11 Sep 2017 12:34:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.84 with SMTP id a81ls334449ljb.37.gmail; Mon, 11 Sep
 2017 12:34:14 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBpQwg+sEzeGijTM4I120eqnU8qZLRvjx/wmmA3jHjeccrnLybpKCV/VxYXgjCjiB/jNl9C
X-Received: by 10.46.92.193 with SMTP id q184mr948955ljb.34.1505158454904;
        Mon, 11 Sep 2017 12:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505158454; cv=none;
        d=google.com; s=arc-20160816;
        b=wN2/GkJB9RTBzKw4n5HcYgVAHSnjXp199naOXMZB2GftEvrQ5OD4UptXb0xEy+YZc2
         +FXz9hYXGjFNYCYJvtmb/FU3/nO8/7Uaekk2t8ZrWStgbSRt1kesA720SEwv5lKbputx
         v36Uv/xfo0wMbOK4hNnjRxUgJ60ZzDckrNJOklvFCRxq7mnQIAv0/SLXx+TyfpkF0Gfc
         qJ619IpY64juClVVojHY7YevBLufSfI8Bqam9VDnVkUekyzU1/ZrOblMn2KJV7qWSWEf
         7j2VO7TrPUD6sV+xX3O/YcAzX63prbn3P4U8REBeakQkkosmpMdkRJ6VMh1TZHhXKsfP
         cb+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=MNoZQIH1XVlUvcDMlVwwG2p6mRO2OLbAwK+dnfKxxz8=;
        b=xOyOOF0sK3XTg24F9DkilcTBCXBSwZPqJ6g4AQdlnJqxDFTzkaHnXS3Fy657gfMmKc
         VwZqJeNjIITJh0p6JrsIXwuaxxzPWn2rvcgix7oQ03no6xacsqJ51JqFPI301wJ4Eyzk
         I+NAQZ0RedhIVB8tbs/2CyeVAg2AlAdJNJJq02GlPCbZtCPfYV55kLxxb9ql30N319XS
         pI1gDVDJslnJQkfmlqDcSKmSXYVcC78617jfWFvonr/foJjw7jsJG2G0zJsn7ByT1OP2
         oKsNMeIH8tRM8UhO9Ae1hEuM7s4FYpWFHdZNFiWaKjD6J3omFzvzcajfIL9xmZJSrYMr
         COWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b62si388727wmd.3.2017.09.11.12.34.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 12:34:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6AD25BE4;
	Mon, 11 Sep 2017 19:34:13 +0000 (UTC)
Date: Mon, 11 Sep 2017 12:34:10 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 07/10] staging: rtl8723bs: Removed
 unneccesary space
Message-ID: <20170911193410.GD23729@kroah.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>
 <e67d17c4599196e34a39fa331aefed76d63c2260.1505052882.git.harshasharmaiitr@gmail.com>
 <20170911164646.GA15530@kroah.com>
 <4485e4d2-138f-4c7a-aefb-df6a8ce841e2@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4485e4d2-138f-4c7a-aefb-df6a8ce841e2@googlegroups.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 11, 2017 at 11:59:23AM -0700, Harsha Sharma wrote:
> 

You are still using html email, and you stripped off the email of the
person who originally sent you the message, which wasn't good :(

> On Monday, September 11, 2017 at 10:16:58 PM UTC+5:30, gregkh wrote:
> 
>     On Sun, Sep 10, 2017 at 11:04:34PM +0530, Harsha Sharma wrote:
>     > Remove space between function name and open parenthesis '('
>     >
>     > Signed-off-by: Harsha Sharma <harshash...@gmail.com>
>     > ---
>     > �drivers/staging/rtl8723bs/os_dep/os_intfs.c | 6 +++---
>     > �1 file changed, 3 insertions(+), 3 deletions(-)
> 
>     This and patch 8/10, have the same subject line (well, one letter
>     different), yet they do different things, please either merge them
>     together or give them better names.
> 
>     thanks,
> 
> 
> Hello,
> Thanks a lot for your feedback.
> Sorry but I have a doubt. Should I send the whole patchset again with required
> changes ? Also I was working on branch first-patchset for this patchset.

You will note that I did take some patches in this series, you have
those emails.  So rebase your series on my latest tree and the applied
patches will go away, and you will be left with what I did not take.

Work from them, I can't do anything with a patch I have already
accepted, right?  :)

thanks

greg k-h

