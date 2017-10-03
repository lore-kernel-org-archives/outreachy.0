X-GM-THRID: 6470117861435113472
X-Received: by 10.28.45.215 with SMTP id t206mr1985394wmt.17.1507046964227;
        Tue, 03 Oct 2017 09:09:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls2840516wmv.9.canary-gmail; Tue,
 03 Oct 2017 09:09:23 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBl44OYCwKTf9uRQ1iW9msYM+YZOHqLVfOBNd3D+1fRkKf5lK6tg7ImfnrJ/z3DnLw6Z7ha
X-Received: by 10.28.35.142 with SMTP id j136mr2370342wmj.1.1507046963161;
        Tue, 03 Oct 2017 09:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507046963; cv=none;
        d=google.com; s=arc-20160816;
        b=qUUKaaoPGZLoWvqhnqwdbvtVQKZArwv3hpKgg9o3BTSqj3PIbsF+hS6UyITkoZLsbm
         M6jjXviugi0EZVtMb46LeoCZND47A5XET4clxLf3x6g7Z3xc9lJFRdUpcMg2Q7RID79x
         6yIqujt94JHuerm0itf8gwVoIh65som+8O/dYqZIfeAXhGAXZtPlOgqcfgSofVenBz33
         6RMmgIsgTktidkrD7FDrXJrp/6GvChv3SRkDZWh8RNV5N3H4rmxiiNNMUYnJgjQaNkHt
         F1poIYMGvGZKHkDEmvSQ2szLqVG172kVS8T4DJ2ZdQV0cTfhrZ1kc7GPrrGFykdZXUZX
         kYSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=8Cp2aGtsyhY5ne4IugjZV8tb/e55NuNhKp6/YV9VzY8=;
        b=Ed9ZfyUFKtX6vcJp00aNU5vI4zgeNc+kHSccSjdVMwTiSAo6m73szVevTzsNrAPZNF
         EO4z+FOqKEqO7EhP87h7o20N9aKtXn5u0AuhLbFJS4JgKQvcAjs6UJS4IOc89LV1sSoA
         QipMEVtSz0uic7uYgHI8J1QxO4EfTXLZS4VgfdwLZk18H3x/AK8AMVZ0WBxWAFsCsdh9
         awO2I1z8jJiMWaPcaeeSN0P1G5dfkAOwdH4xDbWCI0PKzfW4jZatFfLzqvsw+DhEY3jz
         WIDdkez3IxMx/HgoAWMTdNcwhEq3M5VVdNkPFUIvtCltW/548LJruOslKQ+xFf7Slb1n
         CwqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p200si1673421wmg.4.2017.10.03.09.09.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:09:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6324F49D;
	Tue,  3 Oct 2017 16:09:21 +0000 (UTC)
Date: Tue, 3 Oct 2017 18:09:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH v3 0/7] Fix checkpatch issues
Message-ID: <20171003160930.GA7303@kroah.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Mon, Oct 02, 2017 at 12:34:35AM +0300, Georgiana Chelu wrote:
> This patchset was created to fix warnings introduced
> by several patches from the previous patchset.
> The number of the patches was reduced from 10 to 7
> because 1 patch is already accepted, 2 patches were
> combined into a single patch, and the changes from
> the 10/10 patch were added in the patches where 
> coding style fixes were required.

In the future, please put the subsystem and driver name in the subject
of your 0/X email, otherwise it can get lost in my inbox.

Also, why wrap your lines so narrow here?

thanks,

greg k-h

