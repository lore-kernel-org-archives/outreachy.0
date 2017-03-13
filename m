X-GM-THRID: 6397135108875223040
X-Received: by 10.157.45.11 with SMTP id v11mr17174682ota.105.1489449084858;
        Mon, 13 Mar 2017 16:51:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls3892243otd.0.gmail; Mon, 13 Mar
 2017 16:51:24 -0700 (PDT)
X-Received: by 10.157.32.138 with SMTP id x10mr15724825ota.65.1489449084534;
        Mon, 13 Mar 2017 16:51:24 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x231.google.com (mail-pg0-x231.google.com. [2607:f8b0:400e:c05::231])
        by gmr-mx.google.com with ESMTPS id c123si3306576pfa.4.2017.03.13.16.51.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 16:51:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) client-ip=2607:f8b0:400e:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x231.google.com with SMTP id b129so72856838pgc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 16:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DJRKbcGSDWeE5MtzJMi/xLRD6WZvVFldJ2ekD0UBuOY=;
        b=I1XuRerZI5Xo5M5Q2CvCUqD1mMW4g57N9vjHPU1pceVQQ184EWtdCqVrqS0oM5BMi5
         862Jflk36BMvwKoRt3Rf+Bj2CdDqdo6/pGfSxvc9VgMoAXgvU742GxgpKbTr6nAZuTDW
         TyS7BIKV8jKrIXlbJ+gWu8XJpysMbsinJc02vbjia+TqgRTSJg7EEQsy/msxrH08cZJh
         KnlS7SGO3xh6X3eN6YGULlwdKZo6+jiZEKCNLGVnmbuLLyk/h+AVwSjPzJL8rFfj1ltM
         5nYpmoikm/LSk0Xmnh1VfZze11Gp4kD0s+pIHSRxcWwRFtKeIyfcfdeZ21PKdbEPeNri
         Ov1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DJRKbcGSDWeE5MtzJMi/xLRD6WZvVFldJ2ekD0UBuOY=;
        b=JgQXM+JxXfqGmH0QRM5t/BdfFaVb3Fh0fLPHYY0+ea7cHzQoigF8N99wlvFQMAHGic
         PAUxq7ujDfjtOPoySFs92vTW5KMw1GcwTejYgCHsVpQigP1BGx0uu4MUWYgLdj6jRgsy
         z1y7P/qc4yVJ+iydZzZnjJNgTO7gqVPDa9iauJGvBdRCayqmMetwH9J4P+ksU2g9JuCO
         /2FvJ0ZzXyiHRH0FD3eAcaDoRQ/MCep5uuTj71sKcyWYxBhOgs2PODgkMK2/8LjC9PGE
         7gxX9zESE4duJHpZlLyH/YdAjRPx4iIUeER+8Di7WjZgArc/3YbJkR5tIgTOH8wuNVod
         3APA==
X-Gm-Message-State: AMke39mBhVnep2FHGubbat096KoUk1lncdVLcKwv36aEPh937F4w8Fo147rIjBjVaKa3VA==
X-Received: by 10.99.51.76 with SMTP id z73mr40235756pgz.137.1489449084132;
        Mon, 13 Mar 2017 16:51:24 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id h9sm34567490pfd.103.2017.03.13.16.51.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 16:51:23 -0700 (PDT)
Date: Mon, 13 Mar 2017 16:51:22 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: rebasing...
Message-ID: <20170313235121.GA8442@d830.WORKGROUP>
References: <CALks+gA_BQe4HEYdpYdD2b3QsWP48-UU5i3sJJZLhqQQff=Kdg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALks+gA_BQe4HEYdpYdD2b3QsWP48-UU5i3sJJZLhqQQff=Kdg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 11:19:32PM +0000, Tamara Diaconita wrote:
> Hi,
> I just received a feedback from Greg. He me this about the last path set I
> sent : "This patch does not apply to my staging-testing branch at all.  Can
> you
> please rebase all of these and resend them?"
> Does it mean that I have to make the changes again? And which could be the
> reason for not applyng to his staging-testing branch?

Hi Tamara, 

CC'ing outreachy group. This comes up periodically.

First, take a peek here to get a feel for the rate of change in staging-testing:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

Greg is constantly applying patches, not just from Outreachy.  This
means you need to fetch and rebase often.  Most of the time, you'll
get a bunch of updates that don't touch the thing you're working on,
but sometimes, and that's when it counts, the files you are working
have been changed.  The git rebase process will attempt to lay your
commits back on top after rebasing.  If it can't, it walks you thru
the merge conflicts.

Look back at the first patch tutorial - "Update your kernel"
section for the fetch and rebase steps.

alisons










> 
> Thanks,
> Tamara

