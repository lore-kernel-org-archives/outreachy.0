X-GM-THRID: 6933876231124287488
X-Gmail-Labels: Topic type: DISCUSSION
Date: Mon, 5 Apr 2021 07:41:44 -0700 (PDT)
From: Mo Jauhar <siddmohamed19@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d3571675-2353-4bfd-8d1b-a5c33dc1d12en@googlegroups.com>
In-Reply-To: <CAK-LDbLWKurtKDV7QDH1PY3w1b2pofYQmAaFKLMmSoEBHXMOcg@mail.gmail.com>
References: <313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n@googlegroups.com>
 <CAK-LDbLWKurtKDV7QDH1PY3w1b2pofYQmAaFKLMmSoEBHXMOcg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Need help with compiling kernel
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10537_624551571.1617633704849"

------=_Part_10537_624551571.1617633704849
Content-Type: multipart/alternative; 
	boundary="----=_Part_10538_1090806237.1617633704849"

------=_Part_10538_1090806237.1617633704849
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

I am having the same issue. Can you help me out on this, Ankita? I am 
having troubles joining the IRC rn.

Thanks in adv.

Regards,
- Ali

On Saturday, February 27, 2021 at 3:33:23 PM UTC+5:30 Vaishali Thakkar 
wrote:

> On Sat, Feb 27, 2021 at 10:41 AM Ankita Pareek
> <ankitapa...@gmail.com> wrote:
> >
> > Hello everyone!
> > I'm Ankita Pareek from India. I'm applying for Outreachy this year and I 
> would love to contribute to Linux Kernel.
> > I'm a newbie and thus started off with compiling my own kernel following 
> this tutorial --> 
> https://kernelnewbies.org/OutreachyfirstpatchSetup?action=show&redirect=OPWfirstpatchSetup
> > I'm able to successfully build and install the kernel on my native 
> Ubuntu 20.04 and it also gets updated in the grub boot menu. But when I try 
> to boot into that newly compiled kernel it gets stuck at "Loading initial 
> ramdisk ..." and I'm not able to boot into it. Here are some things that I 
> tried to fix this problems -
> >
> > I waited for almost 2-3 hours after that to boot into the new kernel but 
> it still showed the same message.
> > Then I tried changing the 'GRUB_CMDLINE_LINUX' parameter to 'debug' for 
> checking the log messages but couldn't find any logs.
> > Some answers on Google about this said that it was possibly because 
> Secure boot was enabled so I tried compiling and booting by disabling 
> Secure boot but still same problem exists.
> > Then I tried compiling the kernel on a VM and it was successful and I 
> could boot into it. But the VM makes the system very slow and thus I wish 
> to compile and run the kernel on my native Linux machine.
> >
> > What could be the possible reason and fix for this problem? Can someone 
> please help me with this? I've been stuck on this for almost a week now so 
> any help would be really great!
>
> Hi Ankita,
>
> It's strange that you have been able to boot itto same kernel[I assume] in 
> VM
> but not on your machine. Probably something went wrong while installing
> the modules on your machine. Which rc version did you try to install?
>
> I'm free for few hours right now. If you can come on IRC, we can try to
> debug the problem. I'm 'vaishali' on both freenode and OFTC. Just ping
> me there.
>
> > Thanks
> >
> > --
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com.
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n%40googlegroups.com
> .
>
>
>
> -- 
> Vaishali
>

------=_Part_10538_1090806237.1617633704849
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,<div><br></div><div>I am having the same issue. Can you help me out on this, Ankita? I am having troubles joining the IRC rn.</div><div><br></div><div>Thanks in adv.</div><div><br></div><div>Regards,</div><div>- Ali</div><div><br></div><div class="gmail_quote"><div dir="auto" class="gmail_attr">On Saturday, February 27, 2021 at 3:33:23 PM UTC+5:30 Vaishali Thakkar wrote:<br/></div><blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">On Sat, Feb 27, 2021 at 10:41 AM Ankita Pareek<br>&lt;<a href data-email-masked rel="nofollow">ankitapa...@gmail.com</a>&gt; wrote:<br>&gt;<br>&gt; Hello everyone!<br>&gt; I&#39;m Ankita Pareek from India. I&#39;m applying for Outreachy this year and I would love to contribute to Linux Kernel.<br>&gt; I&#39;m a newbie and thus started off with compiling my own kernel following this tutorial --&gt; <a href="https://kernelnewbies.org/OutreachyfirstpatchSetup?action=show&amp;redirect=OPWfirstpatchSetup" target="_blank" rel="nofollow" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=https://kernelnewbies.org/OutreachyfirstpatchSetup?action%3Dshow%26redirect%3DOPWfirstpatchSetup&amp;source=gmail&amp;ust=1617718925871000&amp;usg=AFQjCNFxHBWiCOzJ4kLllfea8Y56ZzHjwA">https://kernelnewbies.org/OutreachyfirstpatchSetup?action=show&amp;redirect=OPWfirstpatchSetup</a><br>&gt; I&#39;m able to successfully build and install the kernel on my native Ubuntu 20.04 and it also gets updated in the grub boot menu. But when I try to boot into that newly compiled kernel it gets stuck at &quot;Loading initial ramdisk ...&quot; and I&#39;m not able to boot into it. Here are some things that I tried to fix this problems -<br>&gt;<br>&gt; I waited for almost 2-3 hours after that to boot into the new kernel but it still showed the same message.<br>&gt; Then I tried changing the &#39;GRUB_CMDLINE_LINUX&#39; parameter to &#39;debug&#39; for checking the log messages but couldn&#39;t find any logs.<br>&gt;  Some answers on Google about this said that it was possibly because Secure boot was enabled so I tried compiling and booting by disabling Secure boot but still same problem exists.<br>&gt; Then I tried compiling the kernel on a VM and it was successful and I could boot into it. But the VM makes the system very slow and thus I wish to compile and run the kernel on my native Linux machine.<br>&gt;<br>&gt; What could be the possible reason and fix for this problem? Can someone please help me with this? I&#39;ve been stuck on this for almost a week now so any help would be really great!<br><br>Hi Ankita,<br><br>It&#39;s strange that you have been able to boot itto same kernel[I assume] in VM<br>but not on your machine. Probably something went wrong while installing<br>the modules on your machine. Which rc version did you try to install?<br><br>I&#39;m free for few hours right now. If you can come on IRC, we can try to<br>debug the problem. I&#39;m &#39;vaishali&#39; on both freenode and OFTC. Just ping<br>me there.<br><br>&gt; Thanks<br>&gt;<br>&gt; --<br>&gt; You received this message because you are subscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href data-email-masked rel="nofollow">outreachy-kern...@googlegroups.com</a>.<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n%40googlegroups.com" target="_blank" rel="nofollow" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=https://groups.google.com/d/msgid/outreachy-kernel/313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n%2540googlegroups.com&amp;source=gmail&amp;ust=1617718925871000&amp;usg=AFQjCNHcubWkPTeYlgHIMO83MU-ZM46h1Q">https://groups.google.com/d/msgid/outreachy-kernel/313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n%40googlegroups.com</a>.<br><br><br><br>-- <br>Vaishali<br></blockquote></div>
------=_Part_10538_1090806237.1617633704849--

------=_Part_10537_624551571.1617633704849--

