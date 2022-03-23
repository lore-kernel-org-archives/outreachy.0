Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0CD614D
	for <outreachy@lists.linux.dev>; Wed, 23 Mar 2022 17:35:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42838C340E8;
	Wed, 23 Mar 2022 17:35:54 +0000 (UTC)
Message-ID: <90ee9960-517c-8d5c-eb8f-6d7847c6e35a@xs4all.nl>
Date: Wed, 23 Mar 2022 18:35:52 +0100
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: Outreachy drivers/staging patch restrictions
Content-Language: en-US
To: Alison Schofield <alison.schofield@intel.com>, gregkh@linuxfoundation.org
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
References: <20220323164815.GA1141800@alison-desk>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220323164815.GA1141800@alison-desk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Alison,

On 23/03/2022 17:48, Alison Schofield wrote:
> Hi Greg, Hans,
> 
> We are preparing to kick off the next contribution period for
> Outreachy Interns. (March 25 - April 22)
> 
> Last round we ran with one restriction:
>>> Do not send patches for drivers/staging/media/atomisp
> 
> Hans handled drivers/staging/media (except for atomisp) and
> Greg picked up all the rest.
> 
> Will that work in the upcoming round?

Actually, I think it is best to skip drivers/staging/media altogether.

I have a lot less time for code review this round, and in addition
the media staging drivers are usually not a good match for code cleanups:
usually they are either already in very good shape and just stuck
in staging because they are waiting for some missing core functionality,
or they are being deprecated.

Regards,

	Hans

> Anything else contributors should be aware of for this round?
> 
> Thanks for your support,
> Alison
> 

