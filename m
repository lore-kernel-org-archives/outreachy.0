Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AEF1846
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 15:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version:content-id;
  bh=XIoqMjq993r3ltjMB5VPADh/3LsZgKNe0W7dFgsILPs=;
  b=QkOR65eucWooPaFEFTG9wnwQxF3/rIWQKuPI1qQIKI/4M5/PBCbj8Daj
   fkEvmRKrsMZR4AwOu7I+LYK/WpinX1ilVTf5eyewJLoLcPVy7sv9KEaYQ
   y+XXYQDoXd2iLSAUIkdi+MtZSN5BhJ9rTp1EnljgHwYwK8o5ut71a1eFS
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,273,1673910000"; 
   d="scan'208";a="50611883"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 16:33:59 +0100
Date: Sun, 19 Mar 2023 16:33:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: warning when converting `to_gbphy_dev` into inline function
In-Reply-To: <16c61a62-c149-bf0e-0dd7-21e4ba9c6d1d@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2303191625290.2867@hadrien>
References: <16c61a62-c149-bf0e-0dd7-21e4ba9c6d1d@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1719124305-1679239988=:2867"
Content-ID: <alpine.DEB.2.22.394.2303191633160.2867@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1719124305-1679239988=:2867
Content-Type: text/plain; CHARSET=ISO-8859-7
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.22.394.2303191633161.2867@hadrien>



On Sun, 19 Mar 2023, Menna Mahmoud wrote:

> Hi Julia,
>
> I tried to convert to_gbphy_dev to inline function but got these warnings
> while building:
>
>
> ```
>
> drivers/staging/greybus/gbphy.c: In function ¡gbphy_dev_uevent¢:
> drivers/staging/greybus/gbphy.c:76:61: warning: passing argument 1 of
> ¡to_gbphy_dev¢ discards ¡const¢ qualifier from pointer target type
> [-Wdiscarded-qualifiers]
>    76 |         const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);

If you look at the code it is complaining about, the context is:

static int gbphy_dev_uevent(const struct device *dev, struct
kobj_uevent_env *env)
{
        const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);


So dev has been declared to be const, meaning that the current function
should not modify its contents.  But dev is passed to your function
to_gbphy_dev that does not declare that its parameter is const.  So the
compiler is concerned that your function may modify its contents.

There are other calls to to_gbphy_dev where the argument is not declared
as const.  So one could be concerned that a function is not possible,
because some calls have an argument with a const type and other calls have
an argument that does not have a const type.  But this is not a problem.
You cannot pass a const value to a non-const parameter, but you can pass a
non-const value to a const parameter.  And to_gbphy_dev doesn't actually
modify its argument in any way, so changing the parameter type to const
struct device * makes the code compile.

Also, in your patch, you have the parameter named dev and the third
argument of container_of named dev.  This will work, but it is very
confusing, because the two occurrences of dev are not the same thing.  The
first one is the argument value.  The second one is a name that will
be used to construct a structure field reference when the macro is
expanded.  You can use the parameter name that was originally used in the
macro.

When you have a question about a patch, it is better to directly include
it in the message, in the normal way with a --- etc, because then it is
possible to comment on it.  Having it in an attachment is not so
convenient, and it seems that my mailreader has decided to drop the
attachment in the reply...

julia


> |                                                             ^~~
> In file included from drivers/staging/greybus/gbphy.c:18:
> drivers/staging/greybus/gbphy.h:22:64: note: expected ¡struct device *¢ but
> argument is of type ¡const struct device *¢
>    22 | static inline struct gbphy_device *to_gbphy_dev(struct device *dev)
>       | ~~~~~~~~~~~~~~~^~~
> ```
>
> I tried to figure out the issue but don't know how to solve it, I attached the
> patch. Could you please check it?
>
>
> Thanks in advance,
>
> Menna
>
--8323329-1719124305-1679239988=:2867--
