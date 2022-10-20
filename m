Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB797B
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 04:01:43 +0000 (UTC)
Received: from [192.168.1.139] (unknown [122.171.21.142])
	by linux.microsoft.com (Postfix) with ESMTPSA id 3E5A120FCF6F;
	Wed, 19 Oct 2022 21:01:36 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 3E5A120FCF6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1666238496;
	bh=pAtU82z6sk1IgG8jekMJ8Us+ebFeZlSAbwHUaXuJKw0=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=FxHX9bGQqeZhb2EswUfq2y9TKLPzK9+pH3u1cVqjdPVcAB6bVKuOLRzHk1wwiS+uo
	 6YAZ1DGK88c7ccLI5nsnZE4ZkiU96dGdaK5Luz8AJmjGaTDgyQkp/p+ZeKBSCDqzAA
	 cx/Gsbh2MiyIlmqc1ATFRQhW1DUXAdL4ef+ffPHw=
Message-ID: <0a6a6853-5720-28d2-13de-c5e7334ff7ba@linux.microsoft.com>
Date: Thu, 20 Oct 2022 09:31:33 +0530
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Weird formatting in rtl8723bs driver code?
To: Emily Peri <eperi1024@gmail.com>, outreachy@lists.linux.dev
References: <Y1C179JmHDc3eI9G@marshmallow>
Content-Language: en-US
From: Praveen Kumar <kumarpraveen@linux.microsoft.com>
In-Reply-To: <Y1C179JmHDc3eI9G@marshmallow>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20-10-2022 08:13, Emily Peri wrote:
> I'm working on cleaning up the rtl8723bs driver with checkpatch, but I
> noticed that some of the variable declarations have differnt amounts of
> whitespace, like this:
> 
>         struct cmd_obj  *ph2c;
>         struct sitesurvey_parm  *psurveyPara;

Addition to white-spaces you can also rework on making variable names to Linux standards, something like "psurveyPara" to "psurvey_para".


>         struct cmd_priv                                 *pcmdpriv = &padapter->cmdpriv;

This needs some formatting in my understanding. 

>         struct mlme_ext_priv    *pmlmeext = &padapter->mlmeextpriv;
> 
> At first I thought this was intentional, but now I'm wondering if this
> is an accident. It's normal to just use one space between the type and
> the variable name, right?
> 

In my understanding and what I've observed we use one space between the data type and variable name, but would let others to comment on this. Thanks.

> 
> --Emily


Regards,

~Praveen.
