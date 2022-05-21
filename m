Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC15192
	for <outreachy@lists.linux.dev>; Sat, 21 May 2022 00:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93F13C385A9;
	Sat, 21 May 2022 00:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653093621;
	bh=AwUUattJFktBCd0thsSFibnjEd2p0pvJMpaz9bsVqqg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=FzN53rYxnyyibD/aD7cowwt1FF6u9Yt8LNY86BXAL6+Nqb4XrQtuulyzpbN0+cLcE
	 MsP++2KFlUo5COpVhDELK8PdwVmwslzBwwFtC14kPUntHZRSMop+t1/GZ86wKRPLfm
	 ikrZQaUupuUYVKpwheD2v9dmvHFC01QgGGieow2MTiE3vTxtdSkjpIw0bVk82K1Zk5
	 0ZWGcHn2HukQ2qRnwTXOF5U17dkdZOuFLAJjy8nX/mqHVNfus/HjPcgHoRXLBAlh/a
	 c9apJFJm0V0phDatvX4ygaGoJQh5qy0CFk+FxUq1Tmb8/T+0ZUc2hwwFCH361Sh7/K
	 zYg2V+rAtl03w==
Date: Fri, 20 May 2022 17:40:20 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>
Cc: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 netdev@vger.kernel.org, outreachy@lists.linux.dev, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v2] net: vxlan: Fix kernel coding style
Message-ID: <20220520174020.3cffce01@kernel.org>
In-Reply-To: <7dbf218e-1a9a-13a4-6b6f-0e23899fb1cb@nvidia.com>
References: <20220520003614.6073-1-eng.alaamohamedsoliman.am@gmail.com>
	<7dbf218e-1a9a-13a4-6b6f-0e23899fb1cb@nvidia.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 19 May 2022 22:06:53 -0700 Roopa Prabhu wrote:
> > @@ -1138,7 +1138,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
> >   	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
> >   	    tb[NDA_PORT])) {
> >   			NL_SET_ERR_MSG(extack,
> > -						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> > +					"DST, VNI, ifindex and port are mutually exclusive with NH_ID");  
> it looks still off by a space.
> 
> >   			return -EINVAL;
> >   		}  
> 
> 
> this closing brace should line up with the if

Let me just fix this myself when applying... There were 3 separate
postings of v2, and they weren't even identical :(
