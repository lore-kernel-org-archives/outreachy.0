Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793455075;
	b=JOTZypbObqdaHfF0rP5M9j61lv15pqteXxbhShEkV7d4x/mGeImT16bQK+deN7+rO4Z4
	 UejzBvKBQeQ9hAejaXXs6/aNXtsDdD6wJTtF5W7vu0D6qht44Q+tgL/ztRjDXPaFmGQ/M
	 0ymjQ63sbtWS2N0h8blHMosRAf1JkkDzT+W06IilIMjJwbWRBsEzmE79pDQAXB8o4aaoz
	 rvbNWlGB+eZDZRgMH129AmO8jC/L+dXzHTunIlkKeQtkOmMr+OYZ1RDYbxOZUiiS+ac67
	 2AAeFtbGC3rEujVu/KUKhEm5uxEC8lyqZBkIb7YAr5h5oB3FKBqJ5INxCuvk/Nvu1sw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793455075;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Content-Type:Content-Transfer-Encoding:From:
	 Mime-Version:Subject:Date:Message-Id:References:Cc:In-Reply-To:To:
	 X-Mailer;
	bh=fOxXv8E2gtfOnjk3x7zNBJexiMId+LyvUodoXHe85ug=;
	b=Fkib1Ygo4+Mbgczu7wTD6/ePmxxXu+HoVg8fdwPIpjZBcYtqO2o1qo7TbGG45GMwCkiB
	 rwMeR9PwhKeulsPSIE7LOo/I2jXZrjUDaOy9xcVmK++cZa6AJvxYJu9afeyXpTs8Lxgb0
	 YbAFxzDDyyihxmHgvb/WWOloA563Ev6eBYuEZ/pJWi6R4IliXC1RvXRSEjzGpGD6uPX29
	 i7QUw21YRSg0Mz7ttR65E/wSfeiCymHHqt6T050h+cts1Bz8S6AGYFldqrrntNOSXnV3v
	 u8vZy2OSMS8GK4oFtS754J0fr9vnmLAofxndKeAYu3qqABFqoQTQsZA4kjkgyymJUMQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=GVeqTMq4;
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31412606A31A
	for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 13:57:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 31412606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=GVeqTMq4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=content-transfer-encoding:from:mime-version:subject:date:
   message-id:references:cc:in-reply-to:to;
  bh=fOxXv8E2gtfOnjk3x7zNBJexiMId+LyvUodoXHe85ug=;
  b=GVeqTMq4C2CXTE7nugj9JAYLEawtl1s2GBUt+Cluum1pgaQdMlk3FMni
   1WxOEv9HnkENqw1DHOAXiHAp8etY9sKBrDsXxCk7/n1RlNVvGdO8kzwwM
   S/RtGZCSHKJ57O1W5mZ20PZMyX3OcHuGsTxHMhrbnPDaGav0fz0m+FbUo
   c=;
X-CSE-ConnectionGUID: RGRQesfYQ1iIhcXJlhDCqQ==
X-CSE-MsgGUID: LzYSmFNGRuu+7UlB+lJRmg==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,188,1787004000"; 
   d="scan'208";a="303149103"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO smtpclient.apple) ([76.123.3.53])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2026 14:57:50 +0100
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Julia Lawall <Julia.Lawall@inria.fr>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] nfs: Only define atomic open tracepoints when NFSv4 is enabled
Date: Sat, 31 Oct 2026 09:57:38 -0400
Message-Id: <E78430D8-5F7C-47FD-ADE7-6AA995F88A53@inria.fr>
References: <20261031130419.87555-1-pavankumaryalagada@gmail.com>
Cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com,
 Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
In-Reply-To: <20261031130419.87555-1-pavankumaryalagada@gmail.com>
To: pavankumaryalagada@gmail.com
X-Mailer: iPhone Mail (23E261)



> On 31 Oct 2026, at 09:04, pavankumaryalagada@gmail.com wrote:
>=20
> =EF=BB=BFFrom: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>=20
> The nfs_atomic_open_enter and nfs_atomic_open_exit tracepoints
> are used only in fs/nfs/dir.c, but they are defined unconditionally
> in fs/nfs/nfstrace.h. This causes unused tracepoint warnings
> when CONFIG_NFS_V4 is disabled.
>=20
> Guard both tracepoint definitions in fs/nfs/nfstrace.h with
> CONFIG_NFS_V4 so they are only compiled when NFSv4 is enabled.

Please add the suggested information about why removing tracepoint definitio=
ns is useful.

Julia

>=20
> Fixes: 6e0d0be715fe ("NFS: Add event tracing for generic NFS lookups")
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> ---
> fs/nfs/nfstrace.h | 2 ++
> 1 file changed, 2 insertions(+)
>=20
> diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
> index b15c1732c869..1b17e8b02692 100644
> --- a/fs/nfs/nfstrace.h
> +++ b/fs/nfs/nfstrace.h
> @@ -514,6 +514,7 @@ DEFINE_NFS_LOOKUP_EVENT(nfs_readdir_lookup);
> DEFINE_NFS_LOOKUP_EVENT(nfs_readdir_lookup_revalidate_failed);
> DEFINE_NFS_LOOKUP_EVENT_DONE(nfs_readdir_lookup_revalidate);
>=20
> +#if IS_ENABLED(CONFIG_NFS_V4)
> TRACE_EVENT(nfs_atomic_open_enter,
>        TP_PROTO(
>            const struct inode *dir,
> @@ -590,6 +591,7 @@ TRACE_EVENT(nfs_atomic_open_exit,
>            __get_str(name)
>        )
> );
> +#endif /* CONFIG_NFS_V4 */
>=20
> TRACE_EVENT(nfs_create_enter,
>        TP_PROTO(
> --
> 2.43.0
>=20
>=20

