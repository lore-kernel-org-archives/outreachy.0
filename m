X-GM-THRID: 6949198562719694848
X-Received: by 2002:a17:90a:ff07:: with SMTP id ce7mr17170621pjb.0.1618039833953;
        Sat, 10 Apr 2021 00:30:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2f88:: with SMTP id t8ls4220828pjd.1.gmail; Sat, 10
 Apr 2021 00:30:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzUc1Pdo26iqivgVZRaQ3qYciK8YrIiOIJaPOwjZN+osiwmOIKfiEUFqwllp1Oh1VdjUlBR
X-Received: by 2002:a17:902:ee4d:b029:ea:ce1c:690f with SMTP id 13-20020a170902ee4db02900eace1c690fmr434066plo.35.1618039832853;
        Sat, 10 Apr 2021 00:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618039832; cv=none;
        d=google.com; s=arc-20160816;
        b=mplMsUksoXsDcED3IQs329rTnPKPVlZsUkeBbKdu+fN8GwEHHb7N8v7K+mtYwBlKov
         dCQLdkjdoIvOjwlrMkM26Y7diJDQ3VFdFEaZsR/sFCK/PNuMG+EI0ByNgb3Fo89ryF3I
         jrXAQ6d9HSORKUJVZqM7VgBzSlNl0SROLDgFC5DLpSl5o6Jx6zNIqzwrabTFYgW5xKtT
         HJCukLYRmJNs7wYIBdYHHKcl9cVI644bA2i72xUEAe4o1sbpEyHq81rDEp0X7xNBPpV4
         3wgZhPL7X3He8y9LQSjpf5x0XIjGUpm9A7OdccNA0+av4sH4qgSh2yUwfGJPCskvIhvu
         WOLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ps1S9+b3PlF+U+Lx8KZ+80tUKleCOjZYZJF/7h6Cuqo=;
        b=YkSgtxw7gLtr9AsJX0S8+OPJSjvM709mRyKvi0M497NtIRTygoebmX74EId2KGbS8v
         QVmX8Rr+1FTTBUrKF+/NNDwan94v6S+uCIckk6xvHR58lUWZ7p6QYTQFirMGhgl5wuca
         dArBcf7sK6whMcE9PPl8M0fbxcHWF8yZ0mGZokTnLhf9M5aNN52ajcmRsSkUlhY4UYAU
         CDuBxSnPG3NDTq0tD+sIuM7paJzwbzXm07LJulbD9m7ERk3UGnD+h9nmTrrsy4soGwQD
         fn6Nk6tSl0eZTAwCI1r1NYPQ5pYYuq5ynf4aZbg5fhfatbTWeDVa1YywYrhgOtFlPwh3
         hcVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DzO7xqgS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mz7si23173pjb.0.2021.04.10.00.30.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 00:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DzO7xqgS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA7E761165;
	Sat, 10 Apr 2021 07:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618039832;
	bh=V2ahhYFun9G88NQxi3nZmo9sLQY6hlpOSG6Jx+hmFsY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DzO7xqgS1NfRhZiRS1IbnQLcjhMcw7kw4xrwa3qJbrSGXRrkFMqY6W7lRo35IFML/
	 py4srfSdjkBPjl9euQbrFv6wzMNg7wJIB3cZ7BNXpNnNiuJh+tiSLf35HD6gSQKUPT
	 tYQg5nIXBLvoW1vAOup968WyrrFcRTK+joWQaXZY=
Date: Sat, 10 Apr 2021 09:30:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [Resend Patch 0/3] staging: rtl8723bs:
 Patchset for rtl8723bs
Message-ID: <YHFUFJ9S1ezqwPe9@kroah.com>
References: <3311077.CXPNp9SFPB@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3311077.CXPNp9SFPB@localhost.localdomain>

On Fri, Apr 09, 2021 at 06:39:31PM +0200, Fabio M. De Francesco wrote:
> This patch series removes camelcase, changes the type and use of a 
> variable, and correct misspelled words.
> 
> Patch 1/3: staging: rtl8723bs: Remove camelcase in several files

<snip>

I've again, dropped all patches from you from my queue.  Please resend
everything in the proper format so that I can know what to review and
what order to apply them in.

thanks,

greg k-h

