Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC7710FB
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 10:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666779487; bh=Y7Kb2yDUIlnkNRRaEbJuYOalZN9M8VcA3PonH9l99Ns=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=pI3jDmYX45ZKgb1FYCmNUV41N1DrGyiKx6qd9QhpUjVygk6pT/UuVFs6SpSoaPmhh
	 RjrQAqK0JnFi98pTSOE5DOZlpgUtxT9izCLYmyvJQ5RXSb0PoILAd4qbGZUuEgjFu3
	 LhAVC8BZarjEZpfPM1gD7IzzveeTaViVcK975/bM=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
	via [213.182.55.206]
	Wed, 26 Oct 2022 12:18:06 +0200 (CEST)
X-EA-Auth: 8unKmsYYRWtj4cw1a9mjc6THxbsJCIEXNTZPLuAUBJB2HUBZzmWrKMPIZqCaRpk2MqHx6Jxenl68vT43fW2st/MU3w9hdny6
Date: Wed, 26 Oct 2022 08:39:31 +0530
From: Deepak R Varma <drv@mailo.com>
To: jovial umwari <umwarijovial@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Submitting a Patch
Message-ID: <Y1ik6/05rA+SpeKu@debian-BULLSEYE-live-builder-AMD64>
References: <CAMk1CBOTuZzKc2eG7CSOukLkd0tPe2LZHuYBJYN4aLBesswBtA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="CPt97vCTXwgcKu3z"
Content-Disposition: inline
In-Reply-To: <CAMk1CBOTuZzKc2eG7CSOukLkd0tPe2LZHuYBJYN4aLBesswBtA@mail.gmail.com>


--CPt97vCTXwgcKu3z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 26, 2022 at 01:08:55PM +0300, jovial umwari wrote:
> Hello
> i am facing an error while i  i am trying to Sending my patch with mutt
>   i did some configurations  but still there is one error i am facing
> <<<SASL authentication failed >>>

This is my current base muttrc file. You may want to compare this with how you
have configured it for your mail service provider.

HTH

./drv

>
> i will appreciate some help on this
> Thank you
>

--CPt97vCTXwgcKu3z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=muttrc

hdr_order From Date: From: To: Cc: Subject:

set from="drv@mailo.com"
set realname="Deepak R Varma"

set smtp_url = "smtps://drv@mailo.com@mail.mailo.com:465/"
set smtp_pass = "XXXXXXXXXXX" # optional. can be entered runtime if left blank here i.e. ""

set editor="vim"
#set sort=reverse-threads
set sort=threads
set sort_aux=reverse-last-date-received

set imap_user = "drv@mailo.com"
set imap_pass = "XXXXXXXX" # can be set to "" and then prompt to enter at runtime
set imap_keepalive=60
set imap_list_subscribed=yes

set ssl_starttls=yes
set certificate_file=~/.mutt/certificates


set mail_check=30

set folder = "imaps://drv@mailo.com@mail.mailo.com:993/"
set spoolfile = "+INBOX"
set record="+Sent"
set postponed="+Drafts"
set trash="+Trash"

set imap_check_subscribed=yes

auto_view text/html
alternative_order text/plain text/enriched text/html

--CPt97vCTXwgcKu3z--


