Received: from sonic312-30.consmr.mail.ne1.yahoo.com (sonic312-30.consmr.mail.ne1.yahoo.com [66.163.191.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330B2380
	for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 20:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=66.163.191.211
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711659114; cv=none; b=H3oKyIUeRWzYDrcR3MoSCVo62lf/W/VdAgVvp5ZdbV8oTn2d+Khb9xjL7nFnh7d+L4yBAEZ5luA2foHpoNY9VBzqNQy6HyQdVAdTF4OLBHO3+0kditjSnYQQ9fWpJ6ovpdo3ttdSKD4EYR2H80Dy/IfQiC2JQg2Y2UJ+dFHd7Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711659114; c=relaxed/simple;
	bh=6OyvJW5A9rWcmehKjGAQyHsN23rg2FfyZiWhC/Nd1rc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=JYDYk+h8w+oAf/6LMnfMffJp1fgkGYYkenqd4wKW8DXLs6o9o5A26U1Opy1JVkxZKE/W1KxlsftLwLZn3D+FD7HDrQzii8ocbrRpO3SnI4BeeFgt4dshxbGMPJnHWpKSffZzxcfoPfY8PYVj3zB53bxsqK8R9WwbisnHzrP/bwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=schaufler-ca.com; spf=none smtp.mailfrom=schaufler-ca.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=PBGi6RBw; arc=none smtp.client-ip=66.163.191.211
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=schaufler-ca.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=schaufler-ca.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="PBGi6RBw"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1711659111; bh=vAD0US8i3hqyTyADIsgxd48k4uLsINZzFUDY6wM/6gI=; h=Date:Subject:To:References:From:In-Reply-To:From:Subject:Reply-To; b=PBGi6RBw6wsMH7e0ib/I5TSgl3/WWJn9X89T4Vua5twQI9wSvaa51B38wMTMAcZrEhN20FjRdYQQR6Qwvy6+eJ0NkSMmP4D6cSMPj6IBjZezs0E+dy2ikPgYwDZCMkNduhpMwSvE8SU6vXTYhSLXj5oT71gSW/39XYupQ2UyTpgcy9WsCY5K6eY+PceBPUCnelmuuxobVL4lgJWCxUf4QBbMIxF7yCdIB0Saopj1SC53D0mkzZs83Ra5BgPRMfwCmuHf99LSjbvTlnyz9XMGl8BBWOm71bHoKGhz0p7ZJmP5phY1QP7VNO1tO37n/6WKcyyRX69nf9CZ9CGgarBJfg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1711659111; bh=siaKM1aA1SosaHcPjNfuML9huqezOdliiwE3fhNWPz1=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=FAzn+J5eNnamqyN9v9mVwgurT5YMFipD8+PZFLrI5n3oeWGwsMdkNBu0nahCBftNkIC6FQ9SyN/vO+wBA1rJRX8kuKBrvd1ybjRsySXlwJHIAGwrnW78xYQ3NWYCbGEWVTmwT2rm/Frh5kg3XN8kz5fvASePXrg/i8qFQcc8yRMg+Z4Og8LWyZ1mTDjCALcvn1NotqoAsn160SOnJ0k6yDxJ+D/1SxHhBbdJj37NWcTYMhT/BX42m/QoAIb11mTXA59kDxUne3ZzA4Gc3lo7L6VLAZh/DB66Cu2wPVV7BgWXGTCABpJsRi1oDWPppKZprmAkZGyOhljcbOoajt+J4g==
X-YMail-OSG: xE2GUwIVM1lqAp1UJVdHSO8tSN_6TSXfN5sjpB_DFingALTKcl371WF7lNjmXSn
 V1e158avf838ghVxfFyaFsIa2glO2nFy6oSu8QgeNEC5yVblpgtGdALD0IU19Gv.5.NxIPb1p9AD
 WCNUCNv2_qiW.E3rWAb1FlgiIKt0hrGMINRbb7Bx5CPs0.iWkN04nvX3S1dno1Kd5DdYve4WsS9D
 sc0cajp371ciA_HYN8o6eE2jeLUYYSsXFxYo.gIeJfbGAau_YfTWFx_f.csK7foFXZNEh8Em7QMn
 keXOB3aiVB3ORy6ZwzwAUrwB_bz56p1qjnIpc_g.EAAQ4fLgCmRlM9aGzNESx5OEuVYuhbE4d5Ba
 YLVDTRuHBHdrh_zRKj1sz_3r59ocPhmGfrgyECdPXHvbVP8imj6Z8.dUmzGv41iYGNQv.7q25Vi3
 oqQcTaN2gyt0wqcxRnm.bJa_xLeOtsdS_7CHSSZvK6L19XfuvE2uLi8w_lTbJ8kIEtmimeoxY4B8
 K4obV7YL_J44Xk.9QYp7jK2COX6PKGPzJ7fLmuwaPWN5odVig7Gxp3FBr.c0ayDhbfrsUiaGhG_x
 .H8wdR6N8i5vwzWBUiLWJQnY2stNVTI5jG.PYl6ZK1BwdGMQb7QcrAC8bJCIuZKyTX.wBRHVafgE
 3UJur_gPTpsE3bUPsWUXH01gFdf0JFEjr9jsH09nytCE7qMTqTUARc.ZLfxqxdwwcieyDYGcdKss
 0kYK0fWjqr8iF03Cy8ienBnZJtY.XLzsWgPZLZjX9muU26.io6KZFJ16HjpB9da9BJX_Ph7oogrn
 vcVLMUyVILCa9c9xKnWg1kZRgNJvYHa5yEUtsPeJHiLKkfJDAFKEU3NNQUVvftvuZecCRpOAuB9g
 Li13qZfxrc.ivYsrs8R6iuOhKOFxB3w3SyPEq93xz5u4xBHgXebWlARuC.ZHpsHoHBmPcbvv428q
 9KHg48LbWXRV9rENJxNGgKpC2hkYY3wt24mBfIWqhWPImMA556fBP3CLQ2gLunWwR.XsOZmYRuUM
 GWEs8xw0v63CbxUQa4Hwa7dkBpiTxq3FW0PpXCLVIToOCqHMLlgcKBnxoNp1NAfoeNqktdcoStuQ
 5yY3JM_efpbHKOXHVmyWfs1WyrPk5LXqhIlJEes5bXTekMhA_.5JwIt9zX7j3FmUoq8_3OGYGcSq
 zs3p87rnJcOqLQ5s3MfaPScnH0LcfrOqrQJ.SAd32qa5v8Ym6Gf6BI2wsKVfuzOY_BB6Gn2QZBoA
 HsbhdxbincqUWQ5kKrheE889tLomtD6if6sOgcK9Vx71KH5_XO3s1Gi8vCAi.WCQfoRuKSgvWmto
 NLmXt3Vj7Lvx7c0ygQORdPZMhp58vJGyTH0fZTXDYSf6vBWNFHbQBgD.nsiLSO5rLx0V.i9NwE4R
 Kegq.IxrbydozEn.qK149IJ8n7uY6C1X9V_c6KJA1x6L0eTh.olTrKKN_sbLA_av_VGGKSTKegdr
 5A66PXu7FFd5sG_RnBH2vPcQST.plVE9tbLJriqBTLZeiT7JIAXQxoYwjqPRpVbUW4YtIqzYmrs8
 V_XuhxORMjmMZcywg4k1X1MwXEz51C4eCnQyarBhAvNX1BIICGrXWr958QLd4Ej3Gk9CGK.HG6hY
 9rBvgUpp7dXI16tq8ZJ69416GTDtpHmrFFD.eV9TmHVAnpgQ2nkZykvALUwpZlDJRqLN0jUwHtMJ
 hpXAV1xN3X5ctWpb0cZw.qwVZ_6lEqTQy4o7XTxn__tqZ3VN7wgmJi1K07m10W9YYn9s753Eh.Aa
 ixN0kN.hpftivLTHBE4ywhHVaiY21716mTXhldjDPZz8RNEj0nT3rJwwTf4zgBXWY06blHqV.bmJ
 iPKGGkeber.tzlujHgjjlPMIoONOiPLCEVoTmiS2elILQlVKELe9B44L0kT4LZ45t85ae0LYBFZn
 bZDctcMpW0d5.F20j9IH6znyRG152mC4m2k.VdipQu2imCUv3maSMDJRHTAm8ck3Dc8nJx2H3b0T
 DFhy70mHipLvcTE1TNuQMhe4_Lz3GsFdHGi5y7MXKGzVP.FdiO1PTG9v9OWaJJ2vWP9ADUJjvWAH
 YtS4gPIbYlxf0zOMKC9j9ljxRqsdT9L3FUG4KmkZWD4y0oG97L_Ao1LN5C4HcsxnB.1xPlGP_zcQ
 zOdyERUd.FJZE.qJ8ro2IaeTxRHoT1jTVSpjXhd1.yDJ3v22wNTqSlR8SLMhiP3_cVGBrnMILuZp
 221X3lOo7gdRi0lDFrLFA2z14YNhNjOJ6a5ugBTJa8.JxTaEGlvUrO9cEGyhGXxXeTAP8QsXVDSe
 k
X-Sonic-MF: <casey@schaufler-ca.com>
X-Sonic-ID: d4871fdc-eb90-4fbc-8fc1-798cb8749252
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.ne1.yahoo.com with HTTP; Thu, 28 Mar 2024 20:51:51 +0000
Received: by hermes--production-gq1-5c57879fdf-nxlqc (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 86426c32e1bf760fc5011cfeb9b47fc5;
          Thu, 28 Mar 2024 20:31:34 +0000 (UTC)
Message-ID: <123a6889-4a28-40c4-b322-3537545824e6@schaufler-ca.com>
Date: Thu, 28 Mar 2024 13:31:31 -0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] landlock: Add abstract unix socket connect restrictions
To: TaheraFahimi <fahimitahera@gmail.com>, outreachy@lists.linux.dev,
 =?UTF-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
 Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, linux-security-module@vger.kernel.org,
 linux-kernel@vger.kernel.org, Casey Schaufler <casey@schaufler-ca.com>
References: <ZgXN5fi6A1YQKiAQ@tahera-OptiPlex-5000>
Content-Language: en-US
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <ZgXN5fi6A1YQKiAQ@tahera-OptiPlex-5000>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailer: WebService/1.1.22205 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

On 3/28/2024 1:07 PM, TaheraFahimi wrote:
> Abstract unix sockets are used for local interprocess communication without
> relying on filesystem. Since landlock has no restriction for connecting to
> a UNIX socket in the abstract namespace, a sandboxed process can connect to
> a socket outside the sandboxed environment. Access to such sockets should
> be scoped the same way ptrace access is limited.
>
> For a landlocked process to be allowed to connect to a target process, it
> must have a subset of the target process’s rules (the connecting socket
> must be in a sub-domain of the listening socket). This patch adds a new
> LSM hook for connect function in unix socket with the related access rights.
>
> Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> ---
>  security/landlock/task.c | 70 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
>
> diff --git a/security/landlock/task.c b/security/landlock/task.c
> index 849f5123610b..7f4155fc6174 100644
> --- a/security/landlock/task.c
> +++ b/security/landlock/task.c
> @@ -13,6 +13,7 @@
>  #include <linux/lsm_hooks.h>
>  #include <linux/rcupdate.h>
>  #include <linux/sched.h>
> +#include <net/sock.h>
>  
>  #include "common.h"
>  #include "cred.h"
> @@ -108,9 +109,78 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
>  	return task_ptrace(parent, current);
>  }
>  
> +static const struct cred *sk_get_cred(struct sock *sk)
> +{
> +	const struct cred *cred = get_cred(sk->sk_peer_cred);
> +
> +	if (!cred)
> +		return NULL;

This makes no sense. If cred is NULL, why not just return it?

> +	return cred;
> +}

This function devolves into a call to get_cred(sk->sk_peer_cred).
What value does it add?

> +
> +static const struct landlock_ruleset *get_current_sock_domain(void)
> +{
> +	const struct landlock_ruleset *const dom =
> +		landlock_get_current_domain();
> +
> +	if (!dom)
> +		return NULL;
> +
> +	return dom;
> +}

Same here. Just return landlock_get_current_domain().

> +
> +static bool unix_sock_is_scoped(struct sock *const sock,
> +				struct sock *const other)
> +{
> +	bool is_scoped = true;
> +
> +	/* get the ruleset of connecting sock*/
> +	const struct landlock_ruleset *const dom_sock =
> +		get_current_sock_domain();
> +
> +	if (!dom_sock)
> +		return true;
> +
> +	/* get credential of listening sock*/
> +	const struct cred *cred_other = sk_get_cred(other);
> +
> +	if (!cred_other)
> +		return true;
> +
> +	/* retrieve the landlock_rulesets*/
> +	const struct landlock_ruleset *dom_parent;
> +
> +	rcu_read_lock();
> +	dom_parent = landlock_cred(cred_other)->domain;
> +	is_scoped = domain_scope_le(dom_parent, dom_sock);
> +	rcu_read_unlock();
> +
> +	return is_scoped;
> +}
> +
> +static int task_unix_stream_connect(struct sock *const sock,
> +				    struct sock *const other,
> +				    struct sock *const newsk)
> +{
> +	if (unix_sock_is_scoped(sock, other))
> +		return 0;
> +	return -EPERM;
> +}

Again, a function that does nothing but wrap another function
adds no value and consumes stack and processing resources.

> +
> +/**
> + * hook_unix_stream_connect
> + */
> +static int hook_unix_stream_connect(struct sock *const sock,
> +				    struct sock *const other,
> +				    struct sock *const newsk)
> +{
> +	return task_unix_stream_connect(sock, other, newsk);
> +}
> +
>  static struct security_hook_list landlock_hooks[] __ro_after_init = {
>  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
>  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> +	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
>  };
>  
>  __init void landlock_add_task_hooks(void)
