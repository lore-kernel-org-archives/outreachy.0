Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91715C84
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 20:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Vpf1eP25KQIZ9wtc4GFaVu8YzGNhZjz2/paeR/lFsGM=;
  b=Ka/wgOueRUpUKhFDIRApJBdKLufSGjylG4HNeZQsM3rgFcDLmR2rknNH
   +p3HLQfP4bVdZTHwFfYaCjWCpeyAdDJahueZEOl8CNddCtYu74hQGDuKx
   1QV7SGmkAuMgd14c/ps98cOQp7j4GVEF51xQjVY7hbOSNZPF1K9Rw0JGL
   k=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,173,1661810400"; 
   d="scan'208";a="26008570"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 22:05:00 +0200
Date: Mon, 10 Oct 2022 22:04:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Hunter Chasens <hunter.chasens18@ncf.edu>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 2/2] Staging: greybus: Removed redundent 'int'
In-Reply-To: <2a829d54ed04d78e5ac455e55b88cde7c22dbfe0.1665430031.git.hunter.chasens18@ncf.edu>
Message-ID: <alpine.DEB.2.22.394.2210102202100.2950@hadrien>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu> <2a829d54ed04d78e5ac455e55b88cde7c22dbfe0.1665430031.git.hunter.chasens18@ncf.edu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 10 Oct 2022, Hunter Chasens wrote:

> Removed redundent 'int' from phrase `unsigned long long int`.

For both patches, the subject line and the log message should be written
in the imperative.

Please see https://kernelnewbies.org/PatchPhilosophy

A good commit message should also say both what you are doing (briefly,
since the reader can also see that from the code) but also why.  Your
message expands on the subject, but doesn't answer the "why" part.

julia

>
> Signed-off-by: Hunter Chasens <hunter.chasens18@ncf.edu>
> ---
>  drivers/staging/greybus/Documentation/firmware/authenticate.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/Documentation/firmware/authenticate.c b/drivers/staging/greybus/Documentation/firmware/authenticate.c
> index 80f30c907905..ba4b16b04557 100644
> --- a/drivers/staging/greybus/Documentation/firmware/authenticate.c
> +++ b/drivers/staging/greybus/Documentation/firmware/authenticate.c
> @@ -58,7 +58,7 @@ int main(int argc, char *argv[])
>  		goto close_fd;
>  	}
>
> -	printf("UID received: 0x%llx\n", *(unsigned long long int *)(uid.uid));
> +	printf("UID received: 0x%llx\n", *(unsigned long long *)(uid.uid));
>
>  	/* Get certificate */
>  	printf("Get IMS certificate\n");
> --
> 2.37.3
>
>
>
