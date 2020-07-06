# -*- coding: binary -*-

require 'msf/core'
require 'msf/core/payload/shuffle'

module Msf

###
#
# Basic block_api stubs for Windows ARCH_X64 payloads
#
###

module Payload::Windows::BlockApi_x64

  include Msf::Payload::Shuffle

  def asm_block_api(opts={})
    instructions = shuffle_instructions('block_api.x64')
    (['api_call:'] + instructions.map { |chunk| '  ' + chunk }).join("\n") + "\n"
  end

end

end

