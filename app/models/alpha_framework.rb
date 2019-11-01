# -*- coding: utf-8 -*-

class AlphaFramework < ApplicationRecord
  include ProjectsHelper

  belongs_to :project
  belongs_to :alpha_framework_def

  has_many :alpha_alphas, :dependent => :destroy

  def self.build_framework(name, project)
    framework = AlphaFramework.create
    byebug
    framework_def = AlphaFrameworkDef.find_by(dname: name)
    framework.alpha_framework_def = framework_def
    framework.project = project
    
    byebug
    alpha_defs = framework_def.alpha_alpha_defs
    if alpha_defs then
      alpha_defs.each do |alpha_def|
        framework.alpha_alphas << AlphaAlpha.build_framework(framework, alpha_def)
      end
    end

    return framework
  end
end
