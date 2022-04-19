Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF76A23
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 03:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SsJk7JK8mJoRcEXTenmsrGMKR0sbCwebkTrY6GmdZlg=; b=MKkF4Vkbg2Y77O3berH21bWVKV
	NWg3ioyM6TsXWS3wS5RZRpNDBE2INsNyooWOHrB3H/fyi2ocVxWBDKP3XFMukIEVR1zRLyGzhAIU9
	U2wNLMY3yDmKVY1HgL80LiMlaYoMhLkDbRYpzyZN3dZWdJ+vTUo29NsgsPnRPDiaZlq8wOW5jAh0e
	kZfA+Dbdq84SR3igCJ9upua184fxmfcp0GG/QMLRX5flchXTeqzksRff/iu5hjPrOezhigHJ5x05j
	XINGOLfYO6rhPcFkD4gadMbVzTBijuT1vynoK7G7UheC0l0q3d3zrxR1zduVJ/lquBKPwnMqeeKPW
	IJmOBQqA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngeCG-002jEl-4D; Tue, 19 Apr 2022 03:06:32 +0000
Date: Tue, 19 Apr 2022 04:06:32 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Bruno Moreira-Guedes <codeagain@codeagain.dev>
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: Re: [PATCH 2/2] Docs: Update kernel series in changes.rst
Message-ID: <Yl4nOBlKnWIcGcYS@casper.infradead.org>
References: <cover.1650336366.git.codeagain@codeagain.dev>
 <a124c3c34e627c124673640aed177c10e401b052.1650336366.git.codeagain@codeagain.dev>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a124c3c34e627c124673640aed177c10e401b052.1650336366.git.codeagain@codeagain.dev>

On Mon, Apr 18, 2022 at 11:58:35PM -0300, Bruno Moreira-Guedes wrote:
> @@ -7,7 +7,7 @@ Intro
>  =====
>  
>  This document is designed to provide a list of the minimum levels of
> -software necessary to run the 4.x kernels.
> +software necessary to run the 5.x kernels.

We don't change the major version when we update the minimum required
tooling ... why not change this once and for all to say:

+software necessary to build the current kernel.


