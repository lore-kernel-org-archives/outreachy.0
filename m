X-GM-THRID: 6205086344963686400
X-Received: by 10.180.85.133 with SMTP id h5mr4304738wiz.1.1444746373943;
        Tue, 13 Oct 2015 07:26:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.79 with SMTP id s76ls682723lfs.29.gmail; Tue, 13 Oct
 2015 07:26:13 -0700 (PDT)
X-Received: by 10.112.173.136 with SMTP id bk8mr7123088lbc.20.1444746373411;
        Tue, 13 Oct 2015 07:26:13 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id bh7si732255wib.1.2015.10.13.07.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 07:26:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id q8so34690840wij.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 07:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ITXW9Fk3gnxAWw0dPvlCuzuZpLDf/3yPIKoSioiMfI4=;
        b=csMeMdwCpWtMHZmcDZqzeryLJ5DPjyczkIBFPxldGf5LQAxXi7roJP6AaFc2OYiElg
         Qj09hcdsd4WrRxi43z21I6Q0rKnDw0emzc42XWLkNhVrsuLc81o7ngVeAywFJnPND2gy
         wmW3FT1M3R4SRWgCqeapJCCpgPRYXS6Z5JibStiuZpjebXjz9EEvgUBB6S3DcJP7dNZN
         W3ElP+H7T/duPaNQMYW1NAm04ifQCzt9qaA3wmmh2A4dBiCbVEeq7TZtdQjnqnYVh83+
         ZebnR627r9msw+HjWo1yaGspCy/37Dc8JLab8VhKvMOcY79fL1jVMj5N+8sxuwt1Yfyr
         NDyA==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr37837612wjb.86.1444746367756;
 Tue, 13 Oct 2015 07:26:07 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 07:26:07 -0700 (PDT)
In-Reply-To: <20151013142446.GA7818@kroah.com>
References: <cover.1444733999.git.shivanib134@gmail.com>
	<20151013142446.GA7818@kroah.com>
Date: Tue, 13 Oct 2015 19:56:07 +0530
Message-ID: <CAKHNQQEh-WKZ=DZgpEAdBZpvdXjqjhqUuXbUwCORbifF4OFGWA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Fix various issues
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 7:54 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Oct 13, 2015 at 04:33:56PM +0530, Shivani Bhardwaj wrote:
>> This patch removes unused code and changes the variable type to more
>> effective one.
>> After applying this patch, code becomes better.
>
> Ok, not to pick on just this patch, but everyone's 0/X emails need a bit
> more work please.
>
> First off, they need 'staging' in them, and then need to be a bit more
> descriptive as to what the patch series does (hint, this one is really
> vague.)
>
> Don't worry about this one, I'll take it, but in the future, if
> _everyone_ could work on their 0/X emails, I would greatly appreciate
> it.
>
> thanks,
>
> greg k-h

I'll take care. Thanks, Greg.

