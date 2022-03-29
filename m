Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA6E20FF
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 07:28:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D7E1C340ED;
	Tue, 29 Mar 2022 07:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1648538924;
	bh=dwp8+q0C+ulsW8juYMkwtN9Qf4zb5tTejayfBHJLRxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l9ts/5j75dchWBGYLVl4dQO5n7hHfz8eQfje7ctsQBVIuVB/VjRM3xYa50wVIHzMH
	 buaLyMhg1WkFcyJ+jTmqvDhnxDIZjqenY8YSSa3exdmsVutB+3NsDOXfygF5lkWWfr
	 1Ki4+CGITQ7Y9DqtuHkZByyDkDpdwnvvhjZMYb57VdZLpHULxckjaa/lGmEU4aMyni
	 oQG6J3nnP3nkJowQGN+nwU9K7cW21piMowmAmRtfFIl0cnS69AqVze7ATgzrQV0jYw
	 XyrZ1cT9EAl026wYEUwNcLXjbDYugfTytvbTdlErRutepa3adKk3yUfU8rSP6Db5Hk
	 yIlLMmxwithnw==
Date: Tue, 29 Mar 2022 10:28:39 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Formasit Fokunang <formasitf@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Build Error
Message-ID: <YkK1Jyyt7L6aYNAA@kernel.org>
References: <CAL1a2sm42ebvt5zKNbQEdojR2vnQqvO6-v2+JGbEE4puxFXRzQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL1a2sm42ebvt5zKNbQEdojR2vnQqvO6-v2+JGbEE4puxFXRzQ@mail.gmail.com>

Hello,

On Tue, Mar 29, 2022 at 05:32:14AM +0100, Formasit Fokunang wrote:
> Hello,
>          I have this error when building my new kernel it occurs when
> run the make -j3 command,though it continues to run after error but i
> can't install the new kernel . I tried looking at the file at
> ./include/linux/elfnote.h to check if i could override the permission
> but i couldn't figure out what exactly caused the error.
> please i will really appreciate some help.
> 
> In file included from ./include/linux/build-salt.h:4,
>                 from init/version.c:11:
> ./include/linux/elfnote.h:74:10: fatal error: opening dependency file init/
> .version.o.d: Permission denied

My guess would be that you've run one of the previous builds as root and
now when you run it as normal user there is not enough permissions to
modify some files.

Try checking who owns the file init/.version.o.d using 'ls -l' and if the
owner is root change the ownership for the entire kernel directory with 

sudo chown -R $USER .

You may also try running 'sudo make mrproper' to wipe the files generated
during previous builds and then start over from clean slate.

>   74 |   struct elf##size##_note _nhdr;    \
>      |          ^~~
> ./include/linux/elfnote.h:93:2: note: in expansion of macro ‘_ELFNOTE’
>   93 |  _ELFNOTE(size, name, __LINE__, type, desc)
>      |  ^~~~~~~~
> ./include/linux/elfnote.h:95:37: note: in expansion of macro ‘ELFNOTE’
>   95 | #define ELFNOTE32(name, type, desc) ELFNOTE(32, name, type, desc)
>      |                                     ^~~~~~~
> ./include/linux/elfnote-lto.h:11:24: note: in expansion of macro ‘ELFNOTE32
> ’
>   11 | #define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0
> )
>      |                        ^~~~~~~~~
> init/version.c:49:1: note: in expansion of macro ‘BUILD_LTO_INFO’
>   49 | BUILD_LTO_INFO;
>      | ^~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.build:288: init/version.o] Error 1
> make: *** [Makefile:1831: init] Error 2
> make: *** Waiting for unfinished jobs....
> 

-- 
Sincerely yours,
Mike.
