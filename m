X-GM-THRID: 6807140134242222080
X-Received: by 2002:a17:90a:eb03:: with SMTP id j3mr111393pjz.72.1585158036492;
        Wed, 25 Mar 2020 10:40:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9688:: with SMTP id n8ls2092610plp.3.gmail; Wed, 25
 Mar 2020 10:40:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvK/Yu5kDvslCO6F+IxAglGeei0scEDOqPSvC0FVfH+nNNyHyxKgB91ppXqDv36SKojpD9I
X-Received: by 2002:a17:90a:ad8b:: with SMTP id s11mr4894239pjq.8.1585158034648;
        Wed, 25 Mar 2020 10:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585158034; cv=none;
        d=google.com; s=arc-20160816;
        b=GYFZuAQytzZXNSspSDIlQYQ9mw9cCTGG6bYqO1KzZXxdj5CRvbRhWinaExFwFfDMpJ
         NAvwlygBIT1Nh5IMu9N26j/+KU1141CWJuKM0HLRovZiVd5RzO3sXYscQ5OKXOgN1P6o
         rGTkj5h0Ur6ZnQkYSTDxhJLP/BiDtGZlomT/Gm2aLYhL3xuiIkaTePJK4TYMHHsgdegN
         Gvj5lNi11g7BiZKHzXyUiUuqVvqGBm/uR3cDfwwtw36C3GgNSjVvdfTaiCGlvEfQBg37
         a4uYoBW0HlfVqBAbp+I2hnBclnXZyh17yuxGA/95iMp0/lWEQluTtrCmM4LcYaHBnjYE
         RgUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=p2/s4NL/6aiSWfJahuDG8HCB95KFMYbndptWmOIlRLA=;
        b=ZFP62H516YqKEOc9AeDZZboi/uEbqV/LytzSLLhpg2zilpFMaJQOZO5yCUCNQHF6va
         HoU9Ezx3i45OSYIXSaK0HhkBERIsc9SRUp3tbbrK7i4oadAEbMVFcE8hffbntHEfE3AX
         KfwGoLgDzTOFeCtd4ZHoq/KNfTuwO0mVejbnKcETV7n+u4QOgkpJkCs2NBfEaeXuBqse
         7ePEm0HsTXlZ6EQOD5zqbL1MoXS8zFu+YNb4DxjzGZ8HX36lh2bS0KrsIiXS+fOi2LTx
         horwEZ9NO0FwM0jZvG1j5mm5NWTze36loxInNcU0FGB9frNXtFbdj2shPFUjwV7KR804
         x8uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5NaHyRI;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w18si823712pfi.4.2020.03.25.10.40.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 10:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5NaHyRI;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 22so1382994pfa.9
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 10:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=p2/s4NL/6aiSWfJahuDG8HCB95KFMYbndptWmOIlRLA=;
        b=L5NaHyRIKodtEJkw9XEf/DM2sAAUXV7jui7cdkct9Gcz5+d8FUFBYxSAKoy4a54Obm
         aekDH6HW+qeqkf6YwRCl5zAzYmgLOXKwM/bFgQ0vODnuSBB9kCJFQnLV+hBBMQbNbkuM
         QbDFyjPO47qnWKT5TGq0WYoigwl6YldyopJI7tSgBOaZByXeAYcq4Tu/7695T6w+Uv3c
         SGY9C2rMyIqwWU9wvuPNxzFdlPpWv0/khgesN+7lXL4rYT1NdoQXVYVh9KIBGe2JU3Rn
         nGu33JnRUSFKb5PtKk0XbiPw+Fil9Y14wnlIYy9tpyqBkVMVV0eKjJwD5ryIx5M8JPCZ
         kRSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=p2/s4NL/6aiSWfJahuDG8HCB95KFMYbndptWmOIlRLA=;
        b=dL2QU4n20py0XbYrsLWdr7gMQHo99zLEscunzoS7j0KQ0wCEH3T6PYZuJxrUO7wjpd
         W2DLB9YCFG0sTPyQ+f7bRM1/rvu9SUfRv0aLtMvo3SHxKg7XSY6ZIGvOihEbvtzYn3rv
         T/l2GyqmtW/cALHHP2rohBhEiOv8uxx0PBjvAhbNAxLur/evzPk5DEezwVKZo687FlPc
         LoDxSvucvtC9bYQPNiw4IT9ksg64c24PYYqu082RwH/JBqsuINc+yAgOktDoaI4SovWU
         eSX20O+dNkFPGTaMN1+wEXijgIRoiMdsCxYnZPuMQUZNtvHXZfVVAK7uQd6QwzR6qRIC
         uErA==
X-Gm-Message-State: ANhLgQ0NnFDLRnGKr7glADcHM5llkArH/rNp4bL69G8fBqbcbecEgvLX
	UlXCWqNjJBMpZr0SUIKzEIkAd6Nz
X-Received: by 2002:a62:2684:: with SMTP id m126mr4328468pfm.153.1585158034443;
        Wed, 25 Mar 2020 10:40:34 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.248])
        by smtp.gmail.com with ESMTPSA id w9sm19217933pfd.94.2020.03.25.10.40.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Mar 2020 10:40:34 -0700 (PDT)
Date: Wed, 25 Mar 2020 23:10:28 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] media: staging/intel-ipu3: Remove extra blank lines
Message-ID: <20200325174027.GB28246@deeUbuntu>
References: <20200322210005.GA27747@deeUbuntu>
 <20200323071024.GB20234@kekkonen.localdomain>
 <20200324193759.GA26516@deeUbuntu>
 <20200325072839.GA22460@kekkonen.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200325072839.GA22460@kekkonen.localdomain>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 25, 2020 at 09:28:39AM +0200, Sakari Ailus wrote:
> Deepak,
> 
> On Wed, Mar 25, 2020 at 01:08:05AM +0530, DEEPAK VARMA wrote:
> > On Mon, Mar 23, 2020 at 09:10:25AM +0200, Sakari Ailus wrote:
> > > Hi Deepak,
> > > 
> > > On Mon, Mar 23, 2020 at 02:30:10AM +0530, Deepak R Varma wrote:
> > > > Remove extra blank lines from the code blocks.
> > > > 
> > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > 
> > > Thanks for the patches. They seem fine to me, but could you send them to
> > > the linux-media list, please? That's where the media patches are reviewed,
> > > including the staging tree.
> > > 
> > Hello Sakari,
> > Thank you for your comments. There are 2 patches for ipu3 that are
> > reviewed, but yet to be accepted by Greg. A couple of them have already
> > been accepted in the recent past.
> > 
> > Do you want me to forward the current open patches list OR all the past 
> > patches as well OR just the future ones?
> 
> Unmerged patches and future ones, please.

Sure, I will do. Thank you.

Deepak.
> 
> -- 
> Kind regards,
> 
> Sakari Ailus

