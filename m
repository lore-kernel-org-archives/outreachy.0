Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2603209
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 17:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1665421378; bh=U9vPpaZrhiA4Hb2SbbBNiG8vs9vYsrv8vt28FuYVOr4=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=O5Af8CWu6AoHUnpTkNZj16Rf7Pf6Ogjchoh7/T1YN7D5Ekj6Rpr2oo0B5OjhIKhl9
	 tE5mRUDXJ7BJKJ6EXg0jWkzBx2hBbkkKxfyce5GVD+O5mZiu7TkH0ZeS0dXeJwYUCz
	 AxyjHUylno/S7FXxmWkLhs+oTVY0aSr8fhIlg51E=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Mon, 10 Oct 2022 19:02:58 +0200 (CEST)
X-EA-Auth: xIHlu8mDL7m+b4hRjRoJf0/YJR1EdJ1VcvFJ1zGyn8+1AWAklCy6gwN/s3oQ51fCwsXcD2FvHx6pR1I2ydy02llgSpGALpjz
Date: Mon, 10 Oct 2022 22:32:52 +0530
From: Deepak R Varma <drv@mailo.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy@lists.linux.dev, Julia Lawall <julia.lawall@inria.fr>,
	Sevinj Aghayeva <sevinj.aghayeva@gmail.com>,
	Roopa Prabhu <roopa@nvidia.com>
Subject: Re: trouble booting into staging kernel
Message-ID: <Y0RQPHU7fXhDf6kA@lion>
References: <Y0MKHfWsqsh4S9ld@lion>
 <20221010125427.52d5a103@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010125427.52d5a103@elisabeth>

On Mon, Oct 10, 2022 at 12:54:27PM +0200, Stefano Brivio wrote:
> Hi Deepak,
>
> On Sun, 9 Oct 2022 23:21:25 +0530
> Deepak R Varma <drv@mailo.com> wrote:
>
> > Hello,
> > I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
> > tried to follow the Kernel First patch tutorial steps and managed to build
> > Kernel release 6.0.0rc4.
>
> Somewhat unrelated: in a past Outreachy round, we did a bit of work on
> a tool with the idea of making these steps easier. It's not mentioned
> in the tutorial, as we didn't have time to polish it up completely, but
> maybe you want to give it a try. Basic usage demo and source at:
>
>   https://mbuto.sh

Hello Stefano,
I will definitely explore this tool and attempt to utilize it if I can. Thank
you very much for sharing the details.

>
> I'm not mentoring for this round, so I'm just throwing this around
> without claiming any responsibility. :)

No problem. I am sure the tool will be a new learning.

>
> About the specific issue you're hitting, I don't have any pointer other
> than what Julia already shared.
Okay. I am working on the link shared by Julia and would share the outcome soon.

Thank you all.

./drv

>
> > There were issues during the module building associated
> > with the certificates / signing of the modules. I got those supressed by
> > emptying the following two config parameters as copied over from the native
> > config file:
> >
> > CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
> > CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"
> >
> > set to new value
> >
> > CONFIG_SYSTEM_TRUSTED_KEYS=""
> > CONFIG_SYSTEM_REVOCATION_KEYS=""
> >
> > The build was successful, however, I am unable to boot into my new kernel and
> > have received following errors:
> >
> > error: bad shim signature
> > Loading initial ramdisk
> > error: you need to load the kernel first
> >
> > I tried to seek from net, but did not find any workable resolution. Can you
> > please suggested how can I correct this error or if I missed any steps?
> >
> > Thank you,
> > Deepak.
>
> --
> Stefano
>
>


