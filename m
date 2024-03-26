Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2461E4C3DE
	for <outreachy@lists.linux.dev>; Tue, 26 Mar 2024 10:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711448520; cv=none; b=tl5goso3BYXi4fWlykMP5imnTBM6qQ78dSjpBFno7W4JpZc23kDI9xC94zwSb9tem5wi317WhIybKe2Q75XEck8q/dsOy14sPjil+27IeLmrujbxEgIGLLX1W9C4If7woT0J6mKq30/AndeRW+1wYNdbRyrXZAKNYesWnP0/BCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711448520; c=relaxed/simple;
	bh=OYAafarS0Xo3fvfDKjSrQonje+qs0kXhZSKHs6JTmek=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cMMScdpGjJ8H837xcKNMrgPdldlxmmBN4sirqLWu8Dr0syXotv+runa+rrb59PutE718u62XEkRxxCXJOiaBvoqWPP3hQnR5hQlGFAFgfHEsX3a1SYmG+PGmWJ+ZOPoDauhSPI1vLfoSDUsZGgI7a8clmaAUU2plA7nhWW2wuAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ftNlJ1il; arc=none smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ftNlJ1il"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711448519; x=1742984519;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OYAafarS0Xo3fvfDKjSrQonje+qs0kXhZSKHs6JTmek=;
  b=ftNlJ1ildKDEPrGg0G9yznj4B2rIVRAloG0AuCoDspF6jeKqGcvmRCHJ
   3bxf+hqqumWBO7hENerTQ/MU4SbkSPjjqqxkvKuxMbiiD1AlOrkHo7YuB
   TaBcS2LTgTd14wizcI47PMVIVle6E36UhmKRsyJAzaibu4b4JVyiDbuWq
   hEPwxwteoTFRg0RaDwlG/JwqbZG77lgPRslJ4O9KOFGszaajTAujqwT/m
   rF2h7kPJq49H/f4gXMNbfW1QpZf+6kmbAuQzzlth2qHZSqukoxSmgI1J4
   F582bIeaw+c40yRR6YUnA8BbxtT6UBJlktbivBZ1BPbe35AkwBLtGmrMr
   A==;
X-CSE-ConnectionGUID: uuz4BKOdTtG9W4m24UfdTw==
X-CSE-MsgGUID: 2YlDs1BZT9yRsrDuLkCc4w==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="7090194"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="7090194"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2024 03:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="15954668"
Received: from pkhursau-mobl.ger.corp.intel.com (HELO fdefranc-mobl3.localnet) ([10.213.16.129])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2024 03:21:55 -0700
From: "Fabio M. De Francesco" <fabio.maria.de.francesco@linux.intel.com>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: mic@digikod.net, skhan@linuxfoundation.org, outreachy@lists.linux.dev,
 Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: Re: [PATCH 0/2] Add io_uring test with Landlock access control rules
Date: Tue, 26 Mar 2024 11:21:52 +0100
Message-ID: <3631043.iIbC2pHGDl@fdefranc-mobl3>
Organization: intel
In-Reply-To: <cover.1711331521.git.dorine.a.tipo@gmail.com>
References: <cover.1711331521.git.dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 25 March 2024 03:32:33 CET Dorine Tipo wrote:
> This patch series introduces a new test for verifying Landlock access
> control rules with io_uring operation, IORING_OP_OPENAT.
> 
> The first patch (Add test for io_uring openat access control with
> Landlock rules) implements the actual test.
> 
> - The test defines allowed and disallowed paths for access attempts.
> - It creates Landlock rulesets for both allowed and disallowed access.
> - It uses io_uring_prep_openat with the rulesets to attempt opening
> files. - The test verifies successful preparation for allowed access and
> expects submission failures for disallowed access.
> 
> The second patch  (Add liburing dependency for io_uring test) updates the
> Makefile to include the necessary liburing library.

Hi Dorine,

If I read your message correctly, patch 1/2 depends on 2/2 because  
liburing is needed by tests in 1/2. Every single patch of a series must 
build and link successfully.  I think that patch 1/2 cannot link without 
the changes that you put in patch 2/2. Am I missing something?

The prerequisites one must meet when sending series are that (1) that  
series must be applicable to (based on) the most recent publicly available 
official version of the subsystem/driver it is meant for, (2) for all n 
patches of a series with N patches, patch n must not require any k > n  
patch (i.e., k:=(n < k <= N)), and (3) each patch must always achieve a 
logically self-contained objective.

Well, in theory you may think to reverse the order of the patches to meet 
rule 2.  But by doing so you would break rule 3 because the changes you 
make in the Makefile would only be needed to build and link another patch so 
they don't serve any self-contained purposes. 

Therefore, please make a self-contained patch that includes all the 
necessary changes to make it build and link.

Thanks,

Fabio

> This patch series improves Landlock's test coverage by incorporating
> io_uring operations and helps ensure Landlock effectively controls access
> through io_uring.
> It enhances the overall security posture of the system.
> 
> The test has been successfully compiled using make run_tests -C landlock
> and successfully verifies Landlock access control with io_uring.
> 
> Dorine Tipo (2):
>   Add test for io_uring openat access control with Landlock rules
>   Add liburing dependency for io_uring test
> 
>  tools/testing/selftests/landlock/Makefile  |   4 +-
>  tools/testing/selftests/landlock/fs_test.c | 132 +++++++++++++++++++++
>  2 files changed, 134 insertions(+), 2 deletions(-)
> 
> --
> 2.25.1




