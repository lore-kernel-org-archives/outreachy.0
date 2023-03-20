Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1B31846
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 10:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1679307676; bh=9fnKDu0u/84I6fAScNsUOdamxUQjyq6suPAejiKSEEs=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=XGe++qiye/NOW8xhP5SrNLSeg7OAAlVYuP/wKT+MGbYSeaYyMeGGgNI50aMXouaUS
	 +zHFYRkRoAEqb1IAuGnZiXlJ1JOmV8Md7hFw1i8bOKIO1hp0y/iSoZ8kblFnTb3rBs
	 1ONYQhAhbp0rnEXzHmxQ0jXnqhKVsIwJS9H8PKd0=
Received: by b221-6.in.mailobj.net [192.168.90.26] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Mon, 20 Mar 2023 11:21:16 +0100 (CET)
X-EA-Auth: EOgB7vvJ+zlZtOUN1Sv140Kam4Bcg9d+Ug6HFfm0Euuw3X0/tVv5r8lAMol9vcdjRRIiWeOWx656wI9jzG9zXnWV6WB2xf+M
Date: Mon, 20 Mar 2023 15:51:11 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <ZBgzl2/RuwlWOJQ/@ubun2204.myguest.virtualbox.org>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
 <20230318130211.GB39892@sumitra.com>
 <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>
 <20230319084520.GC50179@sumitra.com>
 <ZBglD5yEm2Qb40qf@ubun2204.myguest.virtualbox.org>
 <20230320100216.GD126429@sumitra.com>
 <ZBgyZz0c70QQAQax@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBgyZz0c70QQAQax@ubun2204.myguest.virtualbox.org>

On Mon, Mar 20, 2023 at 03:46:07PM +0530, Deepak R Varma wrote:
> On Mon, Mar 20, 2023 at 03:02:16AM -0700, Sumitra Sharma wrote:
> > On Mon, Mar 20, 2023 at 02:49:11PM +0530, Deepak R Varma wrote:
> > 
> > VM linux distro = Ubuntu 20.04 64-bit version
> > Host architecture = windows 11 x64
> 
> Try the following steps and let me know if you are able to select and configure
> the dependencies and the driver you wish to build:
> 
>    cd /path/to/linux/source/
>    cp .config .config_x86_64
>    cp arch/arm64/configs/defconfig .config
>    make ARCH=arm64 CROSS_COMPILE=<<arm64 gcc compiler binary path>> menuconfig
> 
> Note: you first need to resolve the dependencies and then you will be presented
> the selection option for your driver.
> 
> Once you configure the driver, run following to build the Kernel image and
> should include your driver as well:
>    make ARCH=arm64 CROSS_COMPILE=<<arm64 gcc compiler binary path>> 

If you have already progressed with the guidance from other mentors, please
continue to follow those instructions.

> 
> 
> Deepak.
> 
> 
> 


