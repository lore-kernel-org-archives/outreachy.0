Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA36E820
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 14:32:25 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1127)
	id 0885F2017FB2; Fri, 28 Oct 2022 07:26:16 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 0885F2017FB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1666967176;
	bh=L26Hlqlu09jAOKdiTbMPAJVgAO/4+icgs+Oc+jkxusI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ypy3IkOifItYV1WhvFn6EQlfkepzYecdOR9nwV9UQS1P6kwJpAJHDLSxam8wXLe1w
	 qO4/Wp1kKgnNbTNFi3nH+4DqJ7EE4UTkJ3ljp9uME7cr6RFvXSlafcBsZkxexEzDtt
	 +RLdVUP2JOU99ThB65Ei9GNDirsyo7vIIrcQDMas=
Date: Fri, 28 Oct 2022 07:26:16 -0700
From: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: understanding metavariable
Message-ID: <20221028142616.GA25857@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <Y1vfuDzb3yu2CkzN@ubunlion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1vfuDzb3yu2CkzN@ubunlion>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 28, 2022 at 07:27:12PM +0530, Deepak R Varma wrote:
> Hello,
> I am seeing a few warnings reported by coccicheck where it is suggested to use a
> metavariable. See this example warning:
> 
> warning: line 223: should nonseekable_open be a metavariable?

Can you share full more log along with the command you are trying to run.
Also, please let me know the kernel version you are trying this on.

- Saurabh

> 
> I tried to understand about metavariable and how to address this coccicheck
> warning, but did not fully conclude on my next steps.
> 
> Could you provide some details on this concept of metavariables please?
> 
> 
