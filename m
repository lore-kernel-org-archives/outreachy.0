Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.15
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794076187;
	b=r36DCGVKenskhhMfAy0PVE9tUBNwcUSHqJvAieFBQVFw31bgkmfWYhnCRhVQUrCFy8M3
	 ZBSqnYp4blPlr/SHlG9HcmPNMriWiitJQY21CZYl8wXvr3iflx1fPQYb6RKKceh5uRJht
	 byG6KMRQXs1aJfPq33igxE7CSBUaefO1vEKJN1Ts77j4Jw8PxExkcbK3xIzInxPajY3LS
	 ROxUVbPuOVuibR1y/AgQybwqIVTaRJvT6iHUCa6ZFJW6/KFzOVRHVL0mWvTHSaWynJFAC
	 xMW7KduDMNSqIQ3oOk/KyJFAmHQj8mtDj0Hyo+vHHosYfpA97OcN48E7rwHs0MzXwyg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794076187;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Spam-Status:X-Rspamd-Server:
	 X-Stat-Signature:X-Rspamd-Queue-Id:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=xk3yDILpjK/H2XQyRl8c6sn+bZIfRkyVPe0bTyvHxJ0=;
	b=FOYaAMVXpBckZATt8kT7qPSaJJdGm7ed7J6x7UWiiksLN9SoYG2HBYCitev8vrDIddMU
	 bLb+5tPiE27BrFlz8nxgW7pZ8/A793j3hAFv9cvgyOMPOeJdBu3ygXYcJPnRiMgxX/x2S
	 pyjrUkhqSSN5VJOT+9miActoUm09n74U4pLCN9ymfI361GfWUQKQcwD3K2cTIv/M6iXok
	 +AfwJv5Gqd05Z8a3Rb/GxmA3h0ZLzaR/EPWKoQKDfa453I+eFeWaxjPdnBNcT0o6FiyKw
	 XbgMztRJDI47z9s4tU87CHMQ+jw2jQtWIXHjwzmGoHU2evlQJ60NfExfVCresCbr8Gg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=B40hw1Gw;
	arc=none smtp.remote-ip=216.40.44.15
Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF4B606A32C
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:29:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org DCF4B606A32C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=B40hw1Gw
Received: from omf14.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay09.hostedemail.com (Postfix) with ESMTP id 578C4803F2;
	Sat,  7 Nov 2026 18:29:44 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf14.hostedemail.com (Postfix) with ESMTPA id 55EF02F;
	Sat,  7 Nov 2026 18:29:37 +0000 (UTC)
Date: Sat, 7 Nov 2026 13:29:21 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Torra Sowmya <sowmyatorra@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com, julia.lawall@inria.fr
Subject: Re: [PATCH] scsi: sd: Remove unused zone append tracepoints
Message-ID: <20261107132921.6f1684db@fedora>
In-Reply-To: <20261025151702.13434-1-sowmyatorra@gmail.com>
References: <20261025151702.13434-1-sowmyatorra@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout06
X-Stat-Signature: b43hn9zwrmfpzaz86tgj8w977e3gxbq3
X-Rspamd-Queue-Id: 55EF02F
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18qY9kifNBMOVWuliuHu0Wyp0y1MoXrhHM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=xk3yDILpjK/H2XQyRl8c6sn+bZIfRkyVPe0bTyvHxJ0=; b=B40hw1GwY8m0UO3bPJoJ8v4kzkt3L0miYVTbAG1FxkIEhpgzATHfn/cXgomsDa5zzmIiLmKRmVJLXsm0CdyWm/pdw4FWH2hwHRdL0wgG9dSxMQBzK8u6f/TkSPRDE2C0XZb6vni8JJIDz66hcYPmPS2uz8vT+1FKadtsYd7c9is=
X-HE-Tag: 1794076177-196654
X-HE-Meta: U2FsdGVkX180KyZWophpw1yRrZZLrnFYq4kWSE7sKg29JzsnCV8ad0+hEJVLS1pHiOrARfmZKSDqYPkrCAoz4n+bBTK/X+LN8YojiUlnnLxYvZxxlf5aVO9dr9MabIxIJ3KWtAfre9t+tXnCla7LwGpT6mQIosbXh+ZjiyTKVTnTCSxXYLHUE/QheO6HGpndDEnlxzldkIBKz2WVc/rCdTueNqTQgPo1/X11pc9ZEYsZHIiEuMkrVVGrdy8KXXQHJltaFX+bqRIoCeRSQ0QSaL5q4lV79o3zTqWgGGphUvw7TntZkjgf+54/sQN++lTi7ZsyNbjzEhf0SC+5HpxiGgl21QvPNCe/

On Sun, 25 Oct 2026 20:47:02 +0530
Torra Sowmya <sowmyatorra@gmail.com> wrote:

> Commit 1846f308d66f ("scsi: sd: Use the block layer zone append
> emulation") removed the calls to scsi_prepare_zone_append and
> scsi_zone_wp_update, but left their definitions in sd_trace.h.
> Consequently, sd_zbc.c still generates code and data for events
> that have no remaining callers.
> 
> Remove sd_trace.h, which contains only these two events, and
> remove its include and CREATE_TRACE_POINTS definition from
> sd_zbc.c.
> 
> Fixes: 1846f308d66f ("scsi: sd: Use the block layer zone append emulation")
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---

LGTM

-- Steve
