Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DB6641
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 05:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=2myMePV1q6/gVzXbuAwQymTKIhED5cL46qc6e0DbQPY=;
  b=Lxdw6tChJx4DhBTSppGJEPG6g0Uay6fqBC2bbq2ip6eo52yXWXsCaXZ1
   aFVrOyMTVVORi9m0mzOLJYnnqbvzUIrdMWUNVUBAPZcq9Fp67F70vPB2/
   61M2STYmn4s+sNMMJq4e4Lkkf9RdokOAFOxk0Eq7UMBgceI36MzSFevVo
   8=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="97674873"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 06:59:12 +0100
Date: Fri, 17 Mar 2023 06:59:12 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mark Heim <questioneight@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: a bit more trouble
In-Reply-To: <20230317042159.GA423927@pikachu-Z97-D3H>
Message-ID: <alpine.DEB.2.22.394.2303170656220.3105@hadrien>
References: <20230317042159.GA423927@pikachu-Z97-D3H>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 16 Mar 2023, Mark Heim wrote:

> The original task I was working on is the prism2fw.c file
>
> kernels/staging/drivers/staging/wlan-ng
>
> The above C code is not compiled using the makefile
> and I do not know how to build it successfully. It
> seems at least part of the problem is due to
> include macros not being able to find the right header.
>
> This above task looked too difficult for me as a patch
> for now. The README mentions that this code
> is perhaps not ready for public use.
>
> I am now looking at this directory
>
> kernels/staging/drivers/staging/greybus
>
> and more specifically at the top TODO
> item in audio_gb.c. The main Linux build does
> compile this C code to an object but the
> makefile will not generate an object. It appears
> to be another PATH variable issue.
>
> I tried to use gcc on audio_gb.c. It gives
> an include macro error.
>
> I tried to use the makefile in the relevant
> directory to generate the object but there
> is a similar macro error.
>
> Part of the issue with getting audio_gb.c
> to compile is missing headers. I have done something like
> this:
>
> gcc audio_gb.c -I/path/one -I/path/two -I/path/three
>
> and so forth. Several warnings and errors
> appear with this approach. One of them that is
> repated over and over is atomic64, and
> I tried to use the below line to identify where it had
> been defined, but it gave me what I think is
> the wrong answer.
>
> grep -nr atomic64_t ~ | grep -v Binary | grep typedef
>
> Please let me know if you have suggestions on
> what I could try next.

I don't have the impression that you are trying to compile the files in a
proper manner.

First, please read the complete outreachy tutorial.  If you have read it
once, then read it again.  Now that you have a concrete problem, you will
pay more attention when you see the solution.

In general, with the Linux kernel, you can't compile the files manually
with gcc.  You have to start at the top level of your Linux tree.  And
then to compile something you need to say make and then provide the
complete path.  The tutorial will show different paths that you can use in
different cases.

julia
